(string) (len=4160) "COMMENT\t> \\brief \\b IZAMAX\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       INTEGER FUNCTION IZAMAX(N,ZX,INCX)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       INTEGER INCX,N\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       COMPLEX*16 ZX(*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>    IZAMAX finds the index of the first element having maximum |Re(.)| + |Im(.)|\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>         number of elements in input vector(s)\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] ZX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          ZX is COMPLEX*16 array, dimension ( 1 + ( N - 1 )*abs( INCX ) )\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCX is INTEGER\nCOMMENT\t*>         storage spacing between elements of SX\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date November 2017\nCOMMENT\t*\nCOMMENT\t*> \\ingroup aux_blas\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>     jack dongarra, 1/15/85.\nCOMMENT\t*>     modified 3/93 to return if incx .le. 0.\nCOMMENT\t*>     modified 12/3/93, array(1) declarations changed to array(*)\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tINTEGER\nIDENT\tFUNCTION\nIDENT\tIZAMAX\n(\t(\nIDENT\tN\n,\t,\nIDENT\tZX\n,\t,\nIDENT\tINCX\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level1 routine (version 3.8.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     November 2017\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tINTEGER\nIDENT\tINCX\n,\t,\nIDENT\tN\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tZX\n(\t(\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tDMAX\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tIX\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Functions ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tDCABS1\nIDENT\tEXTERNAL\nIDENT\tDCABS1\nCOMMENT\t*     ..\nIDENT\tIZAMAX\n=\t=\nIDENT\t0\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t1\n.\t.\nIDENT\tOR\n.\t.\nIDENT\tINCX\n.\t.\nIDENT\tLE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tRETURN\nIDENT\tIZAMAX\n=\t=\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tRETURN\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*        code for increment equal to 1\nCOMMENT\t*\nIDENT\tDMAX\n=\t=\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\t1\n)\t)\n)\t)\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\t2\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\tI\n)\t)\n)\t)\n.\t.\nIDENT\tGT\n.\t.\nIDENT\tDMAX\n)\t)\nIDENT\tTHEN\nIDENT\tIZAMAX\n=\t=\nIDENT\tI\nIDENT\tDMAX\n=\t=\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\tI\n)\t)\n)\t)\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tDO\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*        code for increment not equal to 1\nCOMMENT\t*\nIDENT\tIX\n=\t=\nIDENT\t1\nIDENT\tDMAX\n=\t=\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\t1\n)\t)\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tIX\n+\t+\nIDENT\tINCX\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\t2\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\tIX\n)\t)\n)\t)\n.\t.\nIDENT\tGT\n.\t.\nIDENT\tDMAX\n)\t)\nIDENT\tTHEN\nIDENT\tIZAMAX\n=\t=\nIDENT\tI\nIDENT\tDMAX\n=\t=\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\tIX\n)\t)\n)\t)\nIDENT\tEND\nIDENT\tIF\nIDENT\tIX\n=\t=\nIDENT\tIX\n+\t+\nIDENT\tINCX\nIDENT\tEND\nIDENT\tDO\nIDENT\tEND\nIDENT\tIF\nIDENT\tRETURN\nIDENT\tEND\n"
