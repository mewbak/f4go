(string) (len=14818) "COMMENT\t> \\brief \\b DTPMV\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       SUBROUTINE DTPMV(UPLO,TRANS,DIAG,N,AP,X,INCX)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       INTEGER INCX,N\nCOMMENT\t*       CHARACTER DIAG,TRANS,UPLO\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       DOUBLE PRECISION AP(*),X(*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*> DTPMV  performs one of the matrix-vector operations\nCOMMENT\t*>\nCOMMENT\t*>    x := A*x,   or   x := A**T*x,\nCOMMENT\t*>\nCOMMENT\t*> where x is an n element vector and  A is an n by n unit, or non-unit,\nCOMMENT\t*> upper or lower triangular matrix, supplied in packed form.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] UPLO\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          UPLO is CHARACTER*1\nCOMMENT\t*>           On entry, UPLO specifies whether the matrix is an upper or\nCOMMENT\t*>           lower triangular matrix as follows:\nCOMMENT\t*>\nCOMMENT\t*>              UPLO = 'U' or 'u'   A is an upper triangular matrix.\nCOMMENT\t*>\nCOMMENT\t*>              UPLO = 'L' or 'l'   A is a lower triangular matrix.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] TRANS\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          TRANS is CHARACTER*1\nCOMMENT\t*>           On entry, TRANS specifies the operation to be performed as\nCOMMENT\t*>           follows:\nCOMMENT\t*>\nCOMMENT\t*>              TRANS = 'N' or 'n'   x := A*x.\nCOMMENT\t*>\nCOMMENT\t*>              TRANS = 'T' or 't'   x := A**T*x.\nCOMMENT\t*>\nCOMMENT\t*>              TRANS = 'C' or 'c'   x := A**T*x.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] DIAG\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          DIAG is CHARACTER*1\nCOMMENT\t*>           On entry, DIAG specifies whether or not A is unit\nCOMMENT\t*>           triangular as follows:\nCOMMENT\t*>\nCOMMENT\t*>              DIAG = 'U' or 'u'   A is assumed to be unit triangular.\nCOMMENT\t*>\nCOMMENT\t*>              DIAG = 'N' or 'n'   A is not assumed to be unit\nCOMMENT\t*>                                  triangular.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>           On entry, N specifies the order of the matrix A.\nCOMMENT\t*>           N must be at least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] AP\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          AP is DOUBLE PRECISION array, dimension at least\nCOMMENT\t*>           ( ( n*( n + 1 ) )/2 ).\nCOMMENT\t*>           Before entry with  UPLO = 'U' or 'u', the array AP must\nCOMMENT\t*>           contain the upper triangular matrix packed sequentially,\nCOMMENT\t*>           column by column, so that AP( 1 ) contains a( 1, 1 ),\nCOMMENT\t*>           AP( 2 ) and AP( 3 ) contain a( 1, 2 ) and a( 2, 2 )\nCOMMENT\t*>           respectively, and so on.\nCOMMENT\t*>           Before entry with UPLO = 'L' or 'l', the array AP must\nCOMMENT\t*>           contain the lower triangular matrix packed sequentially,\nCOMMENT\t*>           column by column, so that AP( 1 ) contains a( 1, 1 ),\nCOMMENT\t*>           AP( 2 ) and AP( 3 ) contain a( 2, 1 ) and a( 3, 1 )\nCOMMENT\t*>           respectively, and so on.\nCOMMENT\t*>           Note that when  DIAG = 'U' or 'u', the diagonal elements of\nCOMMENT\t*>           A are not referenced, but are assumed to be unity.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in,out] X\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          X is DOUBLE PRECISION array, dimension at least\nCOMMENT\t*>           ( 1 + ( n - 1 )*abs( INCX ) ).\nCOMMENT\t*>           Before entry, the incremented array X must contain the n\nCOMMENT\t*>           element vector x. On exit, X is overwritten with the\nCOMMENT\t*>           transformed vector x.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCX is INTEGER\nCOMMENT\t*>           On entry, INCX specifies the increment for the elements of\nCOMMENT\t*>           X. INCX must not be zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date December 2016\nCOMMENT\t*\nCOMMENT\t*> \\ingroup double_blas_level2\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>  Level 2 Blas routine.\nCOMMENT\t*>  The vector and matrix arguments are not referenced when N = 0, or M = 0\nCOMMENT\t*>\nCOMMENT\t*>  -- Written on 22-October-1986.\nCOMMENT\t*>     Jack Dongarra, Argonne National Lab.\nCOMMENT\t*>     Jeremy Du Croz, Nag Central Office.\nCOMMENT\t*>     Sven Hammarling, Nag Central Office.\nCOMMENT\t*>     Richard Hanson, Sandia National Labs.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tSUBROUTINE\nIDENT\tDTPMV\n(\t(\nIDENT\tUPLO\n,\t,\nIDENT\tTRANS\n,\t,\nIDENT\tDIAG\n,\t,\nIDENT\tN\n,\t,\nIDENT\tAP\n,\t,\nIDENT\tX\n,\t,\nIDENT\tINCX\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level2 routine (version 3.7.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     December 2016\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tINTEGER\nIDENT\tINCX\n,\t,\nIDENT\tN\nIDENT\tCHARACTER\nIDENT\tDIAG\n,\t,\nIDENT\tTRANS\n,\t,\nIDENT\tUPLO\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tAP\n(\t(\n*\t*)\n,\t,\nIDENT\tX\n(\t(\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. Parameters ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tZERO\nIDENT\tPARAMETER\n(\t(\nIDENT\tZERO\n=\t=\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n)\t)\nCOMMENT\t*     ..\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tTEMP\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tINFO\n,\t,\nIDENT\tIX\n,\t,\nIDENT\tJ\n,\t,\nIDENT\tJX\n,\t,\nIDENT\tK\n,\t,\nIDENT\tKK\n,\t,\nIDENT\tKX\nIDENT\tLOGICAL\nIDENT\tNOUNIT\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Functions ..\nIDENT\tLOGICAL\nIDENT\tLSAME\nIDENT\tEXTERNAL\nIDENT\tLSAME\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Subroutines ..\nIDENT\tEXTERNAL\nIDENT\tXERBLA\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*     Test the input parameters.\nCOMMENT\t*\nIDENT\tINFO\n=\t=\nIDENT\t0\nIDENT\tIF\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'U'\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'L'\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t1\nIDENT\tELSE\nIDENT\tIF\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'N'\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'T'\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n+\t+\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'C'\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t2\nIDENT\tELSE\nIDENT\tIF\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tDIAG\n,\t,\nSTRING\t'U'\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tDIAG\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t3\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t4\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t7\nIDENT\tEND\nIDENT\tIF\nIDENT\tIF\n(\t(\nIDENT\tINFO\n.\t.\nIDENT\tNE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tCALL\nIDENT\tXERBLA\n(\t(\nSTRING\t'DTPMV '\n,\t,\nIDENT\tINFO\n)\t)\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Quick return if possible.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\nIDENT\tRETURN\nCOMMENT\t*\nIDENT\tNOUNIT\n=\t=\nIDENT\tLSAME\n(\t(\nIDENT\tDIAG\n,\t,\nSTRING\t'N'\n)\t)\nCOMMENT\t*\nCOMMENT\t*     Set up the start point in X if the increment is not unity. This\nCOMMENT\t*     will be  ( N - 1 )*INCX  too small for descending loops.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tLE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tKX\n=\t=\nIDENT\t1\n-\t-\n(\t(\nIDENT\tN\n-\t-\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCX\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tNE\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nIDENT\tKX\n=\t=\nIDENT\t1\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Start the operations. In this version the elements of AP are\nCOMMENT\t*     accessed sequentially with one pass through AP.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*        Form  x:= A*x.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'U'\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tKK\n=\t=\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t20\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\nIDENT\tK\n=\t=\nIDENT\tKK\nIDENT\tDO\nIDENT\t10\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\n-\t-\nIDENT\t1\nIDENT\tX\n(\t(\nIDENT\tI\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tI\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tK\n)\t)\nIDENT\tK\n=\t=\nIDENT\tK\n+\t+\nIDENT\t1\nIDENT\t10\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n+\t+\nIDENT\tJ\n-\t-\nIDENT\t1\n)\t)\nIDENT\tEND\nIDENT\tIF\nIDENT\tKK\n=\t=\nIDENT\tKK\n+\t+\nIDENT\tJ\nIDENT\t20\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tJX\n=\t=\nIDENT\tKX\nIDENT\tDO\nIDENT\t40\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tKX\nIDENT\tDO\nIDENT\t30\nIDENT\tK\n=\t=\nIDENT\tKK\n,\t,\nIDENT\tKK\n+\t+\nIDENT\tJ\n-\t-\nIDENT\t2\nIDENT\tX\n(\t(\nIDENT\tIX\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tIX\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tK\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tIX\n+\t+\nIDENT\tINCX\nIDENT\t30\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n+\t+\nIDENT\tJ\n-\t-\nIDENT\t1\n)\t)\nIDENT\tEND\nIDENT\tIF\nIDENT\tJX\n=\t=\nIDENT\tJX\n+\t+\nIDENT\tINCX\nIDENT\tKK\n=\t=\nIDENT\tKK\n+\t+\nIDENT\tJ\nIDENT\t40\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nIDENT\tKK\n=\t=\n(\t(\nIDENT\tN\n*\t* \n(\t(\nIDENT\tN\n+\t+\nIDENT\t1\n)\t)\n)\t)\n/\t/\nIDENT\t2\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t60\nIDENT\tJ\n=\t=\nIDENT\tN\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\nIDENT\tK\n=\t=\nIDENT\tKK\nIDENT\tDO\nIDENT\t50\nIDENT\tI\n=\t=\nIDENT\tN\n,\t,\nIDENT\tJ\n+\t+\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tX\n(\t(\nIDENT\tI\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tI\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tK\n)\t)\nIDENT\tK\n=\t=\nIDENT\tK\n-\t-\nIDENT\t1\nIDENT\t50\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n-\t-\nIDENT\tN\n+\t+\nIDENT\tJ\n)\t)\nIDENT\tEND\nIDENT\tIF\nIDENT\tKK\n=\t=\nIDENT\tKK\n-\t-\n(\t(\nIDENT\tN\n-\t-\nIDENT\tJ\n+\t+\nIDENT\t1\n)\t)\nIDENT\t60\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tKX\n=\t=\nIDENT\tKX\n+\t+\n(\t(\nIDENT\tN\n-\t-\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCX\nIDENT\tJX\n=\t=\nIDENT\tKX\nIDENT\tDO\nIDENT\t80\nIDENT\tJ\n=\t=\nIDENT\tN\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tKX\nIDENT\tDO\nIDENT\t70\nIDENT\tK\n=\t=\nIDENT\tKK\n,\t,\nIDENT\tKK\n-\t-\n(\t(\nIDENT\tN\n-\t-\n(\t(\nIDENT\tJ\n+\t+\nIDENT\t1\n)\t)\n)\t)\n,\t,\n-\t-\nIDENT\t1\nIDENT\tX\n(\t(\nIDENT\tIX\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tIX\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tK\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tIX\n-\t-\nIDENT\tINCX\nIDENT\t70\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n-\t-\nIDENT\tN\n+\t+\nIDENT\tJ\n)\t)\nIDENT\tEND\nIDENT\tIF\nIDENT\tJX\n=\t=\nIDENT\tJX\n-\t-\nIDENT\tINCX\nIDENT\tKK\n=\t=\nIDENT\tKK\n-\t-\n(\t(\nIDENT\tN\n-\t-\nIDENT\tJ\n+\t+\nIDENT\t1\n)\t)\nIDENT\t80\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*        Form  x := A**T*x.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'U'\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tKK\n=\t=\n(\t(\nIDENT\tN\n*\t* \n(\t(\nIDENT\tN\n+\t+\nIDENT\t1\n)\t)\n)\t)\n/\t/\nIDENT\t2\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t100\nIDENT\tJ\n=\t=\nIDENT\tN\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n)\t)\nIDENT\tK\n=\t=\nIDENT\tKK\n-\t-\nIDENT\t1\nIDENT\tDO\nIDENT\t90\nIDENT\tI\n=\t=\nIDENT\tJ\n-\t-\nIDENT\t1\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n+\t+\nIDENT\tAP\n(\t(\nIDENT\tK\n)\t)\n*\t*X\n(\t(\nIDENT\tI\n)\t)\nIDENT\tK\n=\t=\nIDENT\tK\n-\t-\nIDENT\t1\nIDENT\t90\nIDENT\tCONTINUE\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tTEMP\nIDENT\tKK\n=\t=\nIDENT\tKK\n-\t-\nIDENT\tJ\nIDENT\t100\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tJX\n=\t=\nIDENT\tKX\n+\t+\n(\t(\nIDENT\tN\n-\t-\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCX\nIDENT\tDO\nIDENT\t120\nIDENT\tJ\n=\t=\nIDENT\tN\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tJX\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n)\t)\nIDENT\tDO\nIDENT\t110\nIDENT\tK\n=\t=\nIDENT\tKK\n-\t-\nIDENT\t1\n,\t,\nIDENT\tKK\n-\t-\nIDENT\tJ\n+\t+\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tIX\n=\t=\nIDENT\tIX\n-\t-\nIDENT\tINCX\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n+\t+\nIDENT\tAP\n(\t(\nIDENT\tK\n)\t)\n*\t*X\n(\t(\nIDENT\tIX\n)\t)\nIDENT\t110\nIDENT\tCONTINUE\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n=\t=\nIDENT\tTEMP\nIDENT\tJX\n=\t=\nIDENT\tJX\n-\t-\nIDENT\tINCX\nIDENT\tKK\n=\t=\nIDENT\tKK\n-\t-\nIDENT\tJ\nIDENT\t120\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nIDENT\tKK\n=\t=\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t140\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n)\t)\nIDENT\tK\n=\t=\nIDENT\tKK\n+\t+\nIDENT\t1\nIDENT\tDO\nIDENT\t130\nIDENT\tI\n=\t=\nIDENT\tJ\n+\t+\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n+\t+\nIDENT\tAP\n(\t(\nIDENT\tK\n)\t)\n*\t*X\n(\t(\nIDENT\tI\n)\t)\nIDENT\tK\n=\t=\nIDENT\tK\n+\t+\nIDENT\t1\nIDENT\t130\nIDENT\tCONTINUE\nIDENT\tX\n(\t(\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tTEMP\nIDENT\tKK\n=\t=\nIDENT\tKK\n+\t+\n(\t(\nIDENT\tN\n-\t-\nIDENT\tJ\n+\t+\nIDENT\t1\n)\t)\nIDENT\t140\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tJX\n=\t=\nIDENT\tKX\nIDENT\tDO\nIDENT\t160\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tTEMP\n=\t=\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tJX\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\nIDENT\tP\n(\t(\nIDENT\tKK\n)\t)\nIDENT\tDO\nIDENT\t150\nIDENT\tK\n=\t=\nIDENT\tKK\n+\t+\nIDENT\t1\n,\t,\nIDENT\tKK\n+\t+\nIDENT\tN\n-\t-\nIDENT\tJ\nIDENT\tIX\n=\t=\nIDENT\tIX\n+\t+\nIDENT\tINCX\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n+\t+\nIDENT\tAP\n(\t(\nIDENT\tK\n)\t)\n*\t*X\n(\t(\nIDENT\tIX\n)\t)\nIDENT\t150\nIDENT\tCONTINUE\nIDENT\tX\n(\t(\nIDENT\tJX\n)\t)\n=\t=\nIDENT\tTEMP\nIDENT\tJX\n=\t=\nIDENT\tJX\n+\t+\nIDENT\tINCX\nIDENT\tKK\n=\t=\nIDENT\tKK\n+\t+\n(\t(\nIDENT\tN\n-\t-\nIDENT\tJ\n+\t+\nIDENT\t1\n)\t)\nIDENT\t160\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     End of DTPMV .\nCOMMENT\t*\nIDENT\tEND\n"
