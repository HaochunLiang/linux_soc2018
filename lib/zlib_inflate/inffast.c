/* inffast.c -- fast decoding
 * Copyright (C) 1995-2004 Mark Adler
 * For conditions of distribution and use, see copyright notice in zlib.h
 */

#include <linux/zutil.h>
#include "inftrees.h"
#include "inflate.h"
#include "inffast.h"
#include "infutil.h"
#include "inffixed.h"
#ifndef ASMINF

#define w32(addr, val)      (*(volatile unsigned int *)(addr) = (val))
#define r32(addr)           (*(volatile unsigned int *)(addr))
#define APB_UART1_BASE      0xA0000100
int num_add=0;
static void putst(char *ptr)
{
	w32(APB_UART1_BASE + 0x0c, 0x83);
	w32(APB_UART1_BASE + 0x00, 0x8B);//400MHz,38400//0x34
	w32(APB_UART1_BASE + 0x04, 0x2);
	w32(APB_UART1_BASE + 0x0c, 0x03);
	w32(APB_UART1_BASE + 0x04, 0x01);//2
	w32(APB_UART1_BASE + 0x08, 0x07);

	while ((*ptr) != '\0') {
		if ((*ptr) == '\n'){
            while( !(r32(APB_UART1_BASE + 0x14) & 0x20) ) asm("nop");
	        w32(APB_UART1_BASE + 0x00, '\r');
		}
		while( !(r32(APB_UART1_BASE + 0x14) & 0x20) ) asm("nop");
	    w32(APB_UART1_BASE + 0x00, (*ptr));
		ptr++;
	}
}
union uu {
	unsigned short us;
	unsigned char b[2];
};
/* Endian independed version */
static inline unsigned short
get_unaligned16(const unsigned short *p)
{
	union uu  mm;
	unsigned char *b = (unsigned char *)p;

	mm.b[0] = b[0];
	mm.b[1] = b[1];
	return mm.us;
}

/*
   Decode literal, length, and distance codes and write out the resulting
   literal and match bytes until either not enough input or output is
   available, an end-of-block is encountered, or a data error is encountered.
   When large enough input and output buffers are supplied to inflate(), for
   example, a 16K input buffer and a 64K output buffer, more than 95% of the
   inflate execution time is spent in this routine.

   Entry assumptions:

        state->mode == LEN
        strm->avail_in >= 6
        strm->avail_out >= 258
        start >= strm->avail_out
        state->bits < 8

   On return, state->mode is one of:

        LEN -- ran out of enough output space or enough available input
        TYPE -- reached end of block code, inflate() to interpret next block
        BAD -- error in block data

   Notes:

    - The maximum input bits used by a length/distance pair is 15 bits for the
      length code, 5 bits for the length extra, 15 bits for the distance code,
      and 13 bits for the distance extra.  This totals 48 bits, or six bytes.
      Therefore if strm->avail_in >= 6, then there is enough input to avoid
      checking for available input while decoding.

    - The maximum bytes that a single length/distance pair can output is 258
      bytes, which is the maximum length that can be coded.  inflate_fast()
      requires strm->avail_out >= 258 for each loop to avoid checking for
      output space.

    - @start:	inflate()'s starting value for strm->avail_out
 */
void inflate_fast(z_streamp strm, unsigned start) {
    struct inflate_state *state;
    //putst("State variable declared\n");
    const unsigned char *in;    /* local strm->next_in */
   // putst("Input pointer declared\n");
    const unsigned char *last;  /* while in < last, enough input available */
    //putst("Last pointer declared\n");
    unsigned char *out;         /* local strm->next_out */
    //putst("Output pointer declared\n");
    unsigned char *beg;         /* inflate()'s initial strm->next_out */
   // putst("Beg pointer declared\n");
    unsigned char *end;         /* while out < end, enough space available */
    //putst("End pointer declared\n");
#ifdef INFLATE_STRICT
    unsigned dmax;              /* maximum distance from zlib header */
    //putst("Dmax variable declared for INFLATE_STRICT\n");
#endif
    unsigned wsize;             /* window size or zero if not using window */
    //putst("Wsize variable declared\n");
    unsigned whave;             /* valid bytes in the window */
    //putst("Whave variable declared\n");
    unsigned write;             /* window write index */
    //putst("Write variable declared\n");
    unsigned char *window;      /* allocated sliding window, if wsize != 0 */
   // putst("Window pointer variable declared\n");
    unsigned long hold;         /* local strm->hold */
    //putst("Hold variable declared\n");
    unsigned bits;              /* local strm->bits */
   // putst("Bits variable declared\n");
    code const *lcode;          /* local strm->lencode */
    //putst("Literal code pointer variable declared\n");
    code const *dcode;          /* local strm->distcode */
    //putst("Distance code pointer variable declared\n");
    unsigned lmask;             /* mask for first level of length codes */
    //putst("Length mask variable declared\n");
    unsigned dmask;             /* mask for first level of distance codes */
    //putst("Distance mask variable declared\n");
    code this;                  /* retrieved table entry */
    //putst("This variable declared for table entry\n");
    unsigned op;                /* code bits, operation, extra bits, or */
    //putst("Op variable declared for operation and extra bits\n");
    /* window position, window bytes to copy */
    unsigned len;               /* match length, unused bytes */
   // putst("Len variable declared for match length\n");
    unsigned dist;              /* match distance */
    //putst("Dist variable declared for match distance\n");
    unsigned char *from;        /* where to copy match from */
   // putst("From pointer variable declared for copy source\n");

    /* copy state to local variables */
    state = (struct inflate_state *)strm->state;
    //putst("State pointer updated from strm->state\n");
    in = strm->next_in;
    //putst("Input pointer updated from strm->next_in\n");
    last = in + (strm->avail_in - 5);
    //putst("Last pointer calculated based on input availability\n");
    out = strm->next_out;
    //putst("Output pointer updated from strm->next_out\n");
    beg = out - (start - strm->avail_out);
    //putst("Beg pointer set to initial output position\n");
    end = out + (strm->avail_out - 257);
   // putst("End pointer calculated based on output space\n");
#ifdef INFLATE_STRICT
    dmax = state->dmax;
   // putst("Dmax set from state for INFLATE_STRICT\n");
#endif
    wsize = state->wsize;
    //putst("Window size set from state\n");
    whave = state->whave;
    //putst("Valid bytes in window set from state\n");
    write = state->write;
    //putst("Window write index set from state\n");
    window = state->window;
    //putst("Sliding window pointer set from state\n");
    hold = state->hold;
   // putst("Hold value set from state\n");
    bits = state->bits;
   // putst("Bits count set from state\n");
    lcode = state->lencode;
    //putst("Literal code table pointer set from state\n");
    dcode = state->distcode;
    //putst("Distance code table pointer set from state\n");
    lmask = (1U << state->lenbits) - 1;
    //putst("First level length codes mask calculated\n");
    dmask = (1U << state->distbits) - 1;
    //putst("First level distance codes mask calculated\n");
    // ... (后续代码省略，以避免回答过长)
    /* decode literals and length/distances until end-of-block or not enough
       input data or output space */
    do {
        //putst("in do\n");
        if (bits < 15) {
            //putst("bits < 15\n");
            hold += (unsigned long)(*in++) << bits;
            bits += 8;
            hold += (unsigned long)(*in++) << bits;
            bits += 8;
        }
        this = lcode[hold & lmask];
        //putst("this = lcode[hold & lmask];\n");
      dolen:
        op = (unsigned)(this.bits);
        //putst("op = (unsigned)(this.bits);\n");
        hold >>= op;
        bits -= op;
        op = (unsigned)(this.op);
        if (op == 0) {             
            //putst(" if (op == 0) \n");             /* literal */
            *out++ = (unsigned char)(this.val);
        }
        else if (op & 16) {                     /* length base */
            len = (unsigned)(this.val);
            //putst("len = (unsigned)(this.val);\n");    
            op &= 15;                           /* number of extra bits */
            if (op) {
                //putst(" if (op) {\n");   
                if (bits < op) {
                    //putst("if (bits < op) {\n");   
                    hold += (unsigned long)(*in++) << bits;
                    bits += 8;
                }
                len += (unsigned)hold & ((1U << op) - 1);
                hold >>= op;
                bits -= op;
            }
            if (bits < 15) {
                //putst("if (bits < 15) {\n");  
                hold += (unsigned long)(*in++) << bits;
                bits += 8;
                hold += (unsigned long)(*in++) << bits;
                bits += 8;
            }
            this = dcode[hold & dmask];
          dodist:
            //putst("dodist:\n");  
            op = (unsigned)(this.bits);
            hold >>= op;
            bits -= op;
            op = (unsigned)(this.op);
            if (op & 16) {       
                //putst(" if (op & 16) { \n");                 /* distance base */
                dist = (unsigned)(this.val);
                op &= 15;                       /* number of extra bits */
                if (bits < op) {
                   // putst(" op &= 15;if (bits < op) { \n");   
                    hold += (unsigned long)(*in++) << bits;
                    bits += 8;
                    if (bits < op) {
                        hold += (unsigned long)(*in++) << bits;
                       // putst(" hold += (unsigned long)(*in++) << bits;\n");  
                        bits += 8;
                    }
                }
                dist += (unsigned)hold & ((1U << op) - 1);
#ifdef INFLATE_STRICT
                if (dist > dmax) {
                    //putst("dist > dmax\n");
                    strm->msg = (char *)"invalid distance too far back";
                    state->mode = BAD;
                    break;
                }
#endif
                hold >>= op;
                bits -= op;
                op = (unsigned)(out - beg);     /* max distance in output */
                if (dist > op) {                /* see if copy from window */
                    op = dist - op;             /* distance back in window */
                    //putst("op = dist - op;   \n");  
                    if (op > whave) {
                        strm->msg = (char *)"invalid distance too far back";
                        state->mode = BAD;
                        break;
                    }
                    from = window;
                    if (write == 0) {       
                       // putst(" if (write == 0) { \n");      /* very common case */
                        from += wsize - op;
                        if (op < len) {     
                           // putst("if (op < len) { 11 \n");      /* some from window */
                            len -= op;
                            do {
                                putst("1 do\n");  
                                *out++ = *from++;
                            } while (--op);
                            from = out - dist;  /* rest from output */
                            //putst(" from = out - dist; 333\n");  
                        }
                    }
                    else if (write < op) {      /* wrap around window */
                        //putst(" else if (write < op) { 33\n");  
                        from += wsize + write - op;
                        op -= write;
                        if (op < len) {  
                           // putst("if (op < len) { \n");         /* some from end of window */
                            len -= op;
                            do {
                                *out++ = *from++;
                                //putst(" *out++ = *from++;\n"); 
                            } while (--op);
                            from = window;
                            if (write < len) {  /* some from start of window */
                                op = write;
                                len -= op;
                                //putst("len -= op; 88\n"); 
                                do {
                                    *out++ = *from++;
                                    //putst("*out++ = *from++;\n"); 
                                } while (--op);
                                from = out - dist;      /* rest from output */
                            }
                        }
                    }
                    else {           
                        //putst(" else { 55\n");            /* contiguous in window */
                        from += write - op;
                        if (op < len) {       
                            //putst(" if (op < len) { 55\n");     /* some from window */
                            len -= op;
                            do {
                               // putst("do { 777\n");   
                                *out++ = *from++;
                            } while (--op);
                            from = out - dist;  /* rest from output */
                        }
                    }
                    while (len > 2) {
                        //putst(" while (len > 2) {\n");   
                        *out++ = *from++;
                        *out++ = *from++;
                        *out++ = *from++;
                        len -= 3;
                    }
                    if (len) {
                        //putst("if (len) { uu\n");  
                        *out++ = *from++;
                        if (len > 1)
                            *out++ = *from++;
                    }
                }
                else {
		    unsigned short *sout;
		    unsigned long loops;

                    from = out - dist;          /* copy direct from output */
		    /* minimum length is three */
		    /* Align out addr */
		    if (!((long)(out - 1) & 1)) {
			*out++ = *from++;
			len--;
           //putst(" if (!((long)(out - 1) & 1)) \n");  
		    }
		    sout = (unsigned short *)(out);
		    if (dist > 2) {
			unsigned short *sfrom;
            //putst("unsigned short *sfrom;666\n");  

			sfrom = (unsigned short *)(from);
            //putst("sfrom = (unsigned short *)(from);777\n");  
			loops = len >> 1;
            //putst("loops = len >> 1;888\n");  
			do{
#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
        num_add+=1;
        if(num_add==277) putst("lable\n");
        putst("nownow\n");
		*sout++ = *sfrom++;

#else
		*sout++ = get_unaligned16(sfrom++);
#endif
            }while (--loops);
			out = (unsigned char *)sout;
            //putst("out = (unsigned char *)sout;\n");  
			from = (unsigned char *)sfrom;
            //putst("from = (unsigned char *)sfrom;\n");  
		    } else { /* dist == 1 or dist == 2 */
			unsigned short pat16;

			pat16 = *(sout-1);
			if (dist == 1) {
				union uu mm;
				/* copy one char pattern to both bytes */
				mm.us = pat16;
				mm.b[0] = mm.b[1];
				pat16 = mm.us;
               // putst("pat16 = mm.us;\n");  
			}
			loops = len >> 1;
           // putst("loops = len >> 1;\n");  
			do
			    *sout++ = pat16;
			while (--loops);
			out = (unsigned char *)sout;
           // putst("out = (unsigned char *)sout; www\n");  
		    }
		    if (len & 1)
			*out++ = *from++;
           // putst("*out++ = *from++;\n");  
                }
            }
            else if ((op & 64) == 0) {          /* 2nd level distance code */
                this = dcode[this.val + (hold & ((1U << op) - 1))];
                // putst("this = dcode[this.val + (hold & ((1U << op) - 1))];\n");  
                goto dodist;
                 //putst("goto dodist;\n");  
            }
            else {
                strm->msg = (char *)"invalid distance code";
                state->mode = BAD;
                //putst("state->mode = BAD;\n");  
                break;
                //putst("break; ggg\n");  
            }
        }
        else if ((op & 64) == 0) {              /* 2nd level length code */
            this = lcode[this.val + (hold & ((1U << op) - 1))];
           // putst(" else if ((op & 64) == 0) \n");  
            goto dolen;
            //putst("goto dolen;\n");  
        }
        else if (op & 32) {          
            //putst("else if (op & 32) { \n");             /* end-of-block */
            state->mode = TYPE;
           // putst(" state->mode = TYPE;\n");  
            break;
            //putst("break; gggoo\n");  
        }
        else {
            
            strm->msg = (char *)"invalid literal/length code";
            //putst(" strm->msg = (char *)"";\n");  
            state->mode = BAD;
            //putst("state->mode = BAD; mmm\n");  
            break;
            //putst("break; zxzx\n");  
        }
    } while (in < last && out < end);

    /* return unused bytes (on entry, bits < 8, so in won't go too far back) */
    len = bits >> 3;
    in -= len;
    bits -= len << 3;
    hold &= (1U << bits) - 1;
   // putst(" hold &= (1U << bits) - 1;\n");  

    /* update state and return */
    strm->next_in = in;
    strm->next_out = out;
    strm->avail_in = (unsigned)(in < last ? 5 + (last - in) : 5 - (in - last));
    strm->avail_out = (unsigned)(out < end ?
                                 257 + (end - out) : 257 - (out - end));
    state->hold = hold;
    state->bits = bits;
    //putst("state->bits = bits;\n");  
    return;
}

/*
   inflate_fast() speedups that turned out slower (on a PowerPC G3 750CXe):
   - Using bit fields for code structure
   - Different op definition to avoid & for extra bits (do & for table bits)
   - Three separate decoding do-loops for direct, window, and write == 0
   - Special case for distance > 1 copies to do overlapped load and store copy
   - Explicit branch predictions (based on measured branch probabilities)
   - Deferring match copy and interspersed it with decoding subsequent codes
   - Swapping literal/length else
   - Swapping window/direct else
   - Larger unrolled copy loops (three is about right)
   - Moving len -= 3 statement into middle of loop
 */

#endif /* !ASMINF */
