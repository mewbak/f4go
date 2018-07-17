(string) (len=8394) "COMMENT\t> \\brief \\b CGERC\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       SUBROUTINE CGERC(M,N,ALPHA,X,INCX,Y,INCY,A,LDA)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       COMPLEX ALPHA\nCOMMENT\t*       INTEGER INCX,INCY,LDA,M,N\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       COMPLEX A(LDA,*),X(*),Y(*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*> CGERC  performs the rank 1 operation\nCOMMENT\t*>\nCOMMENT\t*>    A := alpha*x*y**H + A,\nCOMMENT\t*>\nCOMMENT\t*> where alpha is a scalar, x is an m element vector, y is an n element\nCOMMENT\t*> vector and A is an m by n matrix.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] M\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          M is INTEGER\nCOMMENT\t*>           On entry, M specifies the number of rows of the matrix A.\nCOMMENT\t*>           M must be at least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>           On entry, N specifies the number of columns of the matrix A.\nCOMMENT\t*>           N must be at least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] ALPHA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          ALPHA is COMPLEX\nCOMMENT\t*>           On entry, ALPHA specifies the scalar alpha.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] X\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          X is COMPLEX array, dimension at least\nCOMMENT\t*>           ( 1 + ( m - 1 )*abs( INCX ) ).\nCOMMENT\t*>           Before entry, the incremented array X must contain the m\nCOMMENT\t*>           element vector x.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCX is INTEGER\nCOMMENT\t*>           On entry, INCX specifies the increment for the elements of\nCOMMENT\t*>           X. INCX must not be zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] Y\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          Y is COMPLEX array, dimension at least\nCOMMENT\t*>           ( 1 + ( n - 1 )*abs( INCY ) ).\nCOMMENT\t*>           Before entry, the incremented array Y must contain the n\nCOMMENT\t*>           element vector y.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCY\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCY is INTEGER\nCOMMENT\t*>           On entry, INCY specifies the increment for the elements of\nCOMMENT\t*>           Y. INCY must not be zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in,out] A\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          A is COMPLEX array, dimension ( LDA, N )\nCOMMENT\t*>           Before entry, the leading m by n part of the array A must\nCOMMENT\t*>           contain the matrix of coefficients. On exit, A is\nCOMMENT\t*>           overwritten by the updated matrix.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] LDA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          LDA is INTEGER\nCOMMENT\t*>           On entry, LDA specifies the first dimension of A as declared\nCOMMENT\t*>           in the calling (sub) program. LDA must be at least\nCOMMENT\t*>           max( 1, m ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date December 2016\nCOMMENT\t*\nCOMMENT\t*> \\ingroup complex_blas_level2\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>  Level 2 Blas routine.\nCOMMENT\t*>\nCOMMENT\t*>  -- Written on 22-October-1986.\nCOMMENT\t*>     Jack Dongarra, Argonne National Lab.\nCOMMENT\t*>     Jeremy Du Croz, Nag Central Office.\nCOMMENT\t*>     Sven Hammarling, Nag Central Office.\nCOMMENT\t*>     Richard Hanson, Sandia National Labs.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tSUBROUTINE\nIDENT\tCGERC\n(\t(\nIDENT\tM\n,\t,\nIDENT\tN\n,\t,\nIDENT\tALPHA\n,\t,\nIDENT\tX\n,\t,\nIDENT\tINCX\n,\t,\nIDENT\tY\n,\t,\nIDENT\tINCY\n,\t,\nIDENT\tA\n,\t,\nIDENT\tLDA\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level2 routine (version 3.7.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     December 2016\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tCOMPLEX\nIDENT\tALPHA\nIDENT\tINTEGER\nIDENT\tINCX\n,\t,\nIDENT\tINCY\n,\t,\nIDENT\tLDA\n,\t,\nIDENT\tM\n,\t,\nIDENT\tN\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tCOMPLEX\nIDENT\tA\n(\t(\nIDENT\tLDA\n,\t,\n*\t*)\n,\t,\nIDENT\tX\n(\t(\n*\t*)\n,\t,\nIDENT\tY\n(\t(\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. Parameters ..\nIDENT\tCOMPLEX\nIDENT\tZERO\nIDENT\tPARAMETER\n(\t(\nIDENT\tZERO\n=\t=\n(\t(\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tE\n+\t+\nIDENT\t0\n,\t,\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tE\n+\t+\nIDENT\t0\n)\t)\n)\t)\nCOMMENT\t*     ..\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tCOMPLEX\nIDENT\tTEMP\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tINFO\n,\t,\nIDENT\tIX\n,\t,\nIDENT\tJ\n,\t,\nIDENT\tJY\n,\t,\nIDENT\tKX\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Subroutines ..\nIDENT\tEXTERNAL\nIDENT\tXERBLA\nCOMMENT\t*     ..\nCOMMENT\t*     .. Intrinsic Functions ..\nIDENT\tINTRINSIC\nIDENT\tCONJG\n,\t,\nIDENT\tMAX\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*     Test the input parameters.\nCOMMENT\t*\nIDENT\tINFO\n=\t=\nIDENT\t0\nIDENT\tIF\n(\t(\nIDENT\tM\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t1\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t2\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t5\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tINCY\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t7\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLDA\n.\t.\nIDENT\tLT\n.\t.\nIDENT\tMAX\n(\t(\nIDENT\t1\n,\t,\nIDENT\tM\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t9\nIDENT\tEND\nIDENT\tIF\nIDENT\tIF\n(\t(\nIDENT\tINFO\n.\t.\nIDENT\tNE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tCALL\nIDENT\tXERBLA\n(\t(\nSTRING\t'CGERC '\n,\t,\nIDENT\tINFO\n)\t)\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Quick return if possible.\nCOMMENT\t*\nIDENT\tIF\n(\t(\n(\t(\nIDENT\tM\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\n.\t.\nIDENT\tOR\n.\t.\n(\t(\nIDENT\tN\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\n.\t.\nIDENT\tOR\n.\t.\n(\t(\nIDENT\tALPHA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\n)\t)\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     Start the operations. In this version the elements of A are\nCOMMENT\t*     accessed sequentially with one pass through A.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tINCY\n.\t.\nIDENT\tGT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tJY\n=\t=\nIDENT\t1\nIDENT\tELSE\nIDENT\tJY\n=\t=\nIDENT\t1\n-\t-\n(\t(\nIDENT\tN\n-\t-\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCY\nIDENT\tEND\nIDENT\tIF\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t20\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tY\n(\t(\nIDENT\tJY\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*C\nIDENT\tONJG\n(\t(\nIDENT\tY\n(\t(\nIDENT\tJY\n)\t)\n)\t)\nIDENT\tDO\nIDENT\t10\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tA\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tA\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tX\n(\t(\nIDENT\tI\n)\t)\n*\t*T\nIDENT\tEMP\nIDENT\t10\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tJY\n=\t=\nIDENT\tJY\n+\t+\nIDENT\tINCY\nIDENT\t20\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tGT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tKX\n=\t=\nIDENT\t1\nIDENT\tELSE\nIDENT\tKX\n=\t=\nIDENT\t1\n-\t-\n(\t(\nIDENT\tM\n-\t-\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCX\nIDENT\tEND\nIDENT\tIF\nIDENT\tDO\nIDENT\t40\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tY\n(\t(\nIDENT\tJY\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*C\nIDENT\tONJG\n(\t(\nIDENT\tY\n(\t(\nIDENT\tJY\n)\t)\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tKX\nIDENT\tDO\nIDENT\t30\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tA\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tA\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tX\n(\t(\nIDENT\tIX\n)\t)\n*\t*T\nIDENT\tEMP\nIDENT\tIX\n=\t=\nIDENT\tIX\n+\t+\nIDENT\tINCX\nIDENT\t30\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tJY\n=\t=\nIDENT\tJY\n+\t+\nIDENT\tINCY\nIDENT\t40\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     End of CGERC .\nCOMMENT\t*\nIDENT\tEND\n"
