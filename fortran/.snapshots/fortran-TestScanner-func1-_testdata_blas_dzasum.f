(string) (len=3836) "COMMENT\t> \\brief \\b DZASUM\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       DOUBLE PRECISION FUNCTION DZASUM(N,ZX,INCX)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       INTEGER INCX,N\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       COMPLEX*16 ZX(*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>    DZASUM takes the sum of the (|Re(.)| + |Im(.)|)'s of a complex vector and\nCOMMENT\t*>    returns a single precision result.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>         number of elements in input vector(s)\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in,out] ZX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          ZX is COMPLEX*16 array, dimension ( 1 + ( N - 1 )*abs( INCX ) )\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCX is INTEGER\nCOMMENT\t*>         storage spacing between elements of ZX\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date November 2017\nCOMMENT\t*\nCOMMENT\t*> \\ingroup double_blas_level1\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>     jack dongarra, 3/11/78.\nCOMMENT\t*>     modified 3/93 to return if incx .le. 0.\nCOMMENT\t*>     modified 12/3/93, array(1) declarations changed to array(*)\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tFUNCTION\nIDENT\tDZASUM\n(\t(\nIDENT\tN\n,\t,\nIDENT\tZX\n,\t,\nIDENT\tINCX\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level1 routine (version 3.8.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     November 2017\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tINTEGER\nIDENT\tINCX\n,\t,\nIDENT\tN\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tZX\n(\t(\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tSTEMP\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tNINCX\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Functions ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tDCABS1\nIDENT\tEXTERNAL\nIDENT\tDCABS1\nCOMMENT\t*     ..\nIDENT\tDZASUM\n=\t=\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\td0\nIDENT\tSTEMP\n=\t=\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\td0\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLE\n.\t.\nIDENT\t0\n.\t.\nIDENT\tOR\n.\t.\nIDENT\tINCX\n.\t.\nIDENT\tLE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tRETURN\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*        code for increment equal to 1\nCOMMENT\t*\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tSTEMP\n=\t=\nIDENT\tSTEMP\n+\t+\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\tI\n)\t)\n)\t)\nIDENT\tEND\nIDENT\tDO\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*        code for increment not equal to 1\nCOMMENT\t*\nIDENT\tNINCX\n=\t=\nIDENT\tN\n*\t*I\nIDENT\tNCX\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tNINCX\n,\t,\nIDENT\tINCX\nIDENT\tSTEMP\n=\t=\nIDENT\tSTEMP\n+\t+\nIDENT\tDCABS1\n(\t(\nIDENT\tZX\n(\t(\nIDENT\tI\n)\t)\n)\t)\nIDENT\tEND\nIDENT\tDO\nIDENT\tEND\nIDENT\tIF\nIDENT\tDZASUM\n=\t=\nIDENT\tSTEMP\nIDENT\tRETURN\nIDENT\tEND\n"
