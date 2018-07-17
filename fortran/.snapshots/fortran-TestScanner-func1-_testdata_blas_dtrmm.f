(string) (len=17818) "COMMENT\t> \\brief \\b DTRMM\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       SUBROUTINE DTRMM(SIDE,UPLO,TRANSA,DIAG,M,N,ALPHA,A,LDA,B,LDB)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       DOUBLE PRECISION ALPHA\nCOMMENT\t*       INTEGER LDA,LDB,M,N\nCOMMENT\t*       CHARACTER DIAG,SIDE,TRANSA,UPLO\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       DOUBLE PRECISION A(LDA,*),B(LDB,*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*> DTRMM  performs one of the matrix-matrix operations\nCOMMENT\t*>\nCOMMENT\t*>    B := alpha*op( A )*B,   or   B := alpha*B*op( A ),\nCOMMENT\t*>\nCOMMENT\t*> where  alpha  is a scalar,  B  is an m by n matrix,  A  is a unit, or\nCOMMENT\t*> non-unit,  upper or lower triangular matrix  and  op( A )  is one  of\nCOMMENT\t*>\nCOMMENT\t*>    op( A ) = A   or   op( A ) = A**T.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] SIDE\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          SIDE is CHARACTER*1\nCOMMENT\t*>           On entry,  SIDE specifies whether  op( A ) multiplies B from\nCOMMENT\t*>           the left or right as follows:\nCOMMENT\t*>\nCOMMENT\t*>              SIDE = 'L' or 'l'   B := alpha*op( A )*B.\nCOMMENT\t*>\nCOMMENT\t*>              SIDE = 'R' or 'r'   B := alpha*B*op( A ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] UPLO\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          UPLO is CHARACTER*1\nCOMMENT\t*>           On entry, UPLO specifies whether the matrix A is an upper or\nCOMMENT\t*>           lower triangular matrix as follows:\nCOMMENT\t*>\nCOMMENT\t*>              UPLO = 'U' or 'u'   A is an upper triangular matrix.\nCOMMENT\t*>\nCOMMENT\t*>              UPLO = 'L' or 'l'   A is a lower triangular matrix.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] TRANSA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          TRANSA is CHARACTER*1\nCOMMENT\t*>           On entry, TRANSA specifies the form of op( A ) to be used in\nCOMMENT\t*>           the matrix multiplication as follows:\nCOMMENT\t*>\nCOMMENT\t*>              TRANSA = 'N' or 'n'   op( A ) = A.\nCOMMENT\t*>\nCOMMENT\t*>              TRANSA = 'T' or 't'   op( A ) = A**T.\nCOMMENT\t*>\nCOMMENT\t*>              TRANSA = 'C' or 'c'   op( A ) = A**T.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] DIAG\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          DIAG is CHARACTER*1\nCOMMENT\t*>           On entry, DIAG specifies whether or not A is unit triangular\nCOMMENT\t*>           as follows:\nCOMMENT\t*>\nCOMMENT\t*>              DIAG = 'U' or 'u'   A is assumed to be unit triangular.\nCOMMENT\t*>\nCOMMENT\t*>              DIAG = 'N' or 'n'   A is not assumed to be unit\nCOMMENT\t*>                                  triangular.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] M\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          M is INTEGER\nCOMMENT\t*>           On entry, M specifies the number of rows of B. M must be at\nCOMMENT\t*>           least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>           On entry, N specifies the number of columns of B.  N must be\nCOMMENT\t*>           at least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] ALPHA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          ALPHA is DOUBLE PRECISION.\nCOMMENT\t*>           On entry,  ALPHA specifies the scalar  alpha. When  alpha is\nCOMMENT\t*>           zero then  A is not referenced and  B need not be set before\nCOMMENT\t*>           entry.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] A\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>           A is DOUBLE PRECISION array, dimension ( LDA, k ), where k is m\nCOMMENT\t*>           when  SIDE = 'L' or 'l'  and is  n  when  SIDE = 'R' or 'r'.\nCOMMENT\t*>           Before entry  with  UPLO = 'U' or 'u',  the  leading  k by k\nCOMMENT\t*>           upper triangular part of the array  A must contain the upper\nCOMMENT\t*>           triangular matrix  and the strictly lower triangular part of\nCOMMENT\t*>           A is not referenced.\nCOMMENT\t*>           Before entry  with  UPLO = 'L' or 'l',  the  leading  k by k\nCOMMENT\t*>           lower triangular part of the array  A must contain the lower\nCOMMENT\t*>           triangular matrix  and the strictly upper triangular part of\nCOMMENT\t*>           A is not referenced.\nCOMMENT\t*>           Note that when  DIAG = 'U' or 'u',  the diagonal elements of\nCOMMENT\t*>           A  are not referenced either,  but are assumed to be  unity.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] LDA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          LDA is INTEGER\nCOMMENT\t*>           On entry, LDA specifies the first dimension of A as declared\nCOMMENT\t*>           in the calling (sub) program.  When  SIDE = 'L' or 'l'  then\nCOMMENT\t*>           LDA  must be at least  max( 1, m ),  when  SIDE = 'R' or 'r'\nCOMMENT\t*>           then LDA must be at least max( 1, n ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in,out] B\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          B is DOUBLE PRECISION array, dimension ( LDB, N )\nCOMMENT\t*>           Before entry,  the leading  m by n part of the array  B must\nCOMMENT\t*>           contain the matrix  B,  and  on exit  is overwritten  by the\nCOMMENT\t*>           transformed matrix.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] LDB\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          LDB is INTEGER\nCOMMENT\t*>           On entry, LDB specifies the first dimension of B as declared\nCOMMENT\t*>           in  the  calling  (sub)  program.   LDB  must  be  at  least\nCOMMENT\t*>           max( 1, m ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date December 2016\nCOMMENT\t*\nCOMMENT\t*> \\ingroup double_blas_level3\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>  Level 3 Blas routine.\nCOMMENT\t*>\nCOMMENT\t*>  -- Written on 8-February-1989.\nCOMMENT\t*>     Jack Dongarra, Argonne National Laboratory.\nCOMMENT\t*>     Iain Duff, AERE Harwell.\nCOMMENT\t*>     Jeremy Du Croz, Numerical Algorithms Group Ltd.\nCOMMENT\t*>     Sven Hammarling, Numerical Algorithms Group Ltd.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tSUBROUTINE\nIDENT\tDTRMM\n(\t(\nIDENT\tSIDE\n,\t,\nIDENT\tUPLO\n,\t,\nIDENT\tTRANSA\n,\t,\nIDENT\tDIAG\n,\t,\nIDENT\tM\n,\t,\nIDENT\tN\n,\t,\nIDENT\tALPHA\n,\t,\nIDENT\tA\n,\t,\nIDENT\tLDA\n,\t,\nIDENT\tB\n,\t,\nIDENT\tLDB\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level3 routine (version 3.7.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     December 2016\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tALPHA\nIDENT\tINTEGER\nIDENT\tLDA\n,\t,\nIDENT\tLDB\n,\t,\nIDENT\tM\n,\t,\nIDENT\tN\nIDENT\tCHARACTER\nIDENT\tDIAG\n,\t,\nIDENT\tSIDE\n,\t,\nIDENT\tTRANSA\n,\t,\nIDENT\tUPLO\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tA\n(\t(\nIDENT\tLDA\n,\t,\n*\t*)\n,\t,\nIDENT\tB\n(\t(\nIDENT\tLDB\n,\t,\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. External Functions ..\nIDENT\tLOGICAL\nIDENT\tLSAME\nIDENT\tEXTERNAL\nIDENT\tLSAME\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Subroutines ..\nIDENT\tEXTERNAL\nIDENT\tXERBLA\nCOMMENT\t*     ..\nCOMMENT\t*     .. Intrinsic Functions ..\nIDENT\tINTRINSIC\nIDENT\tMAX\nCOMMENT\t*     ..\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tTEMP\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tINFO\n,\t,\nIDENT\tJ\n,\t,\nIDENT\tK\n,\t,\nIDENT\tNROWA\nIDENT\tLOGICAL\nIDENT\tLSIDE\n,\t,\nIDENT\tNOUNIT\n,\t,\nIDENT\tUPPER\nCOMMENT\t*     ..\nCOMMENT\t*     .. Parameters ..\nIDENT\tDOUBLE\nIDENT\tPRECISION\nIDENT\tONE\n,\t,\nIDENT\tZERO\nIDENT\tPARAMETER\n(\t(\nIDENT\tONE\n=\t=\nIDENT\t1\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n,\t,\nIDENT\tZERO\n=\t=\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n)\t)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*     Test the input parameters.\nCOMMENT\t*\nIDENT\tLSIDE\n=\t=\nIDENT\tLSAME\n(\t(\nIDENT\tSIDE\n,\t,\nSTRING\t'L'\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tLSIDE\n)\t)\nIDENT\tTHEN\nIDENT\tNROWA\n=\t=\nIDENT\tM\nIDENT\tELSE\nIDENT\tNROWA\n=\t=\nIDENT\tN\nIDENT\tEND\nIDENT\tIF\nIDENT\tNOUNIT\n=\t=\nIDENT\tLSAME\n(\t(\nIDENT\tDIAG\n,\t,\nSTRING\t'N'\n)\t)\nIDENT\tUPPER\n=\t=\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'U'\n)\t)\nCOMMENT\t*\nIDENT\tINFO\n=\t=\nIDENT\t0\nIDENT\tIF\n(\t(\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSIDE\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tSIDE\n,\t,\nSTRING\t'R'\n)\t)\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t1\nIDENT\tELSE\nIDENT\tIF\n(\t(\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tUPPER\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'L'\n)\t)\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t2\nIDENT\tELSE\nIDENT\tIF\n(\t(\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANSA\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n+\t+\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANSA\n,\t,\nSTRING\t'T'\n)\t)\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n+\t+\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANSA\n,\t,\nSTRING\t'C'\n)\t)\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t3\nIDENT\tELSE\nIDENT\tIF\n(\t(\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tDIAG\n,\t,\nSTRING\t'U'\n)\t)\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tDIAG\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t4\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tM\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t5\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t6\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLDA\n.\t.\nIDENT\tLT\n.\t.\nIDENT\tMAX\n(\t(\nIDENT\t1\n,\t,\nIDENT\tNROWA\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t9\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLDB\n.\t.\nIDENT\tLT\n.\t.\nIDENT\tMAX\n(\t(\nIDENT\t1\n,\t,\nIDENT\tM\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t11\nIDENT\tEND\nIDENT\tIF\nIDENT\tIF\n(\t(\nIDENT\tINFO\n.\t.\nIDENT\tNE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tCALL\nIDENT\tXERBLA\n(\t(\nSTRING\t'DTRMM '\n,\t,\nIDENT\tINFO\n)\t)\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Quick return if possible.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tM\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n.\t.\nIDENT\tOR\n.\t.\nIDENT\tN\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     And when  alpha.eq.zero.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tALPHA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t20\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t10\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tZERO\nIDENT\t10\nIDENT\tCONTINUE\nIDENT\t20\nIDENT\tCONTINUE\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Start the operations.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tLSIDE\n)\t)\nIDENT\tTHEN\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tTRANSA\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*           Form  B := alpha*A*B.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t50\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t40\nIDENT\tK\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tIF\n(\t(\nIDENT\tB\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*B\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tDO\nIDENT\t30\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tK\n-\t-\nIDENT\t1\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t30\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tK\n,\t,\nIDENT\tK\n)\t)\nIDENT\tB\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tTEMP\nIDENT\tEND\nIDENT\tIF\nIDENT\t40\nIDENT\tCONTINUE\nIDENT\t50\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t80\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t70\nIDENT\tK\n=\t=\nIDENT\tM\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tB\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*B\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tB\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tTEMP\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tB\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n*\t*A\n(\t(\nIDENT\tK\n,\t,\nIDENT\tK\n)\t)\nIDENT\tDO\nIDENT\t60\nIDENT\tI\n=\t=\nIDENT\tK\n+\t+\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t60\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t70\nIDENT\tCONTINUE\nIDENT\t80\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*           Form  B := alpha*A**T*B.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t110\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t100\nIDENT\tI\n=\t=\nIDENT\tM\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tTEMP\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tI\n,\t,\nIDENT\tI\n)\t)\nIDENT\tDO\nIDENT\t90\nIDENT\tK\n=\t=\nIDENT\t1\n,\t,\nIDENT\tI\n-\t-\nIDENT\t1\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n+\t+\nIDENT\tA\n(\t(\nIDENT\tK\n,\t,\nIDENT\tI\n)\t)\n*\t*B\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t90\nIDENT\tCONTINUE\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP\nIDENT\t100\nIDENT\tCONTINUE\nIDENT\t110\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t140\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t130\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tTEMP\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tI\n,\t,\nIDENT\tI\n)\t)\nIDENT\tDO\nIDENT\t120\nIDENT\tK\n=\t=\nIDENT\tI\n+\t+\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n+\t+\nIDENT\tA\n(\t(\nIDENT\tK\n,\t,\nIDENT\tI\n)\t)\n*\t*B\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t120\nIDENT\tCONTINUE\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP\nIDENT\t130\nIDENT\tCONTINUE\nIDENT\t140\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tTRANSA\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*           Form  B := alpha*B*A.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t180\nIDENT\tJ\n=\t=\nIDENT\tN\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tDO\nIDENT\t150\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t150\nIDENT\tCONTINUE\nIDENT\tDO\nIDENT\t170\nIDENT\tK\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\n-\t-\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tA\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*A\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tDO\nIDENT\t160\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t160\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t170\nIDENT\tCONTINUE\nIDENT\t180\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t220\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tDO\nIDENT\t190\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t190\nIDENT\tCONTINUE\nIDENT\tDO\nIDENT\t210\nIDENT\tK\n=\t=\nIDENT\tJ\n+\t+\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tA\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*A\n(\t(\nIDENT\tK\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tDO\nIDENT\t200\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t200\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t210\nIDENT\tCONTINUE\nIDENT\t220\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*           Form  B := alpha*B*A**T.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t260\nIDENT\tK\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t240\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tK\n-\t-\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tA\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tK\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*A\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tK\n)\t)\nIDENT\tDO\nIDENT\t230\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t230\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t240\nIDENT\tCONTINUE\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tK\n,\t,\nIDENT\tK\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tTEMP\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tONE\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t250\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\n=\t=\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t250\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t260\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t300\nIDENT\tK\n=\t=\nIDENT\tN\n,\t,\nIDENT\t1\n,\t,\n-\t-\nIDENT\t1\nIDENT\tDO\nIDENT\t280\nIDENT\tJ\n=\t=\nIDENT\tK\n+\t+\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tA\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tK\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\n*\t*A\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tK\n)\t)\nIDENT\tDO\nIDENT\t270\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t270\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t280\nIDENT\tCONTINUE\nIDENT\tTEMP\n=\t=\nIDENT\tALPHA\nIDENT\tIF\n(\t(\nIDENT\tNOUNIT\n)\t)\nIDENT\tTEMP\n=\t=\nIDENT\tTEMP\n*\t*A\n(\t(\nIDENT\tK\n,\t,\nIDENT\tK\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tTEMP\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tONE\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t290\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\n=\t=\nIDENT\tTEMP\n*\t*B\n(\t(\nIDENT\tI\n,\t,\nIDENT\tK\n)\t)\nIDENT\t290\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t300\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     End of DTRMM .\nCOMMENT\t*\nIDENT\tEND\n"
