(string) (len=17154) "COMMENT\t> \\brief \\b ZSYR2K\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       SUBROUTINE ZSYR2K(UPLO,TRANS,N,K,ALPHA,A,LDA,B,LDB,BETA,C,LDC)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       COMPLEX*16 ALPHA,BETA\nCOMMENT\t*       INTEGER K,LDA,LDB,LDC,N\nCOMMENT\t*       CHARACTER TRANS,UPLO\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       COMPLEX*16 A(LDA,*),B(LDB,*),C(LDC,*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*> ZSYR2K  performs one of the symmetric rank 2k operations\nCOMMENT\t*>\nCOMMENT\t*>    C := alpha*A*B**T + alpha*B*A**T + beta*C,\nCOMMENT\t*>\nCOMMENT\t*> or\nCOMMENT\t*>\nCOMMENT\t*>    C := alpha*A**T*B + alpha*B**T*A + beta*C,\nCOMMENT\t*>\nCOMMENT\t*> where  alpha and beta  are scalars,  C is an  n by n symmetric matrix\nCOMMENT\t*> and  A and B  are  n by k  matrices  in the  first  case  and  k by n\nCOMMENT\t*> matrices in the second case.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] UPLO\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          UPLO is CHARACTER*1\nCOMMENT\t*>           On  entry,   UPLO  specifies  whether  the  upper  or  lower\nCOMMENT\t*>           triangular  part  of the  array  C  is to be  referenced  as\nCOMMENT\t*>           follows:\nCOMMENT\t*>\nCOMMENT\t*>              UPLO = 'U' or 'u'   Only the  upper triangular part of  C\nCOMMENT\t*>                                  is to be referenced.\nCOMMENT\t*>\nCOMMENT\t*>              UPLO = 'L' or 'l'   Only the  lower triangular part of  C\nCOMMENT\t*>                                  is to be referenced.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] TRANS\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          TRANS is CHARACTER*1\nCOMMENT\t*>           On entry,  TRANS  specifies the operation to be performed as\nCOMMENT\t*>           follows:\nCOMMENT\t*>\nCOMMENT\t*>              TRANS = 'N' or 'n'    C := alpha*A*B**T + alpha*B*A**T +\nCOMMENT\t*>                                         beta*C.\nCOMMENT\t*>\nCOMMENT\t*>              TRANS = 'T' or 't'    C := alpha*A**T*B + alpha*B**T*A +\nCOMMENT\t*>                                         beta*C.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>           On entry,  N specifies the order of the matrix C.  N must be\nCOMMENT\t*>           at least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] K\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          K is INTEGER\nCOMMENT\t*>           On entry with  TRANS = 'N' or 'n',  K  specifies  the number\nCOMMENT\t*>           of  columns  of the  matrices  A and B,  and on  entry  with\nCOMMENT\t*>           TRANS = 'T' or 't',  K  specifies  the number of rows of the\nCOMMENT\t*>           matrices  A and B.  K must be at least zero.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] ALPHA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          ALPHA is COMPLEX*16\nCOMMENT\t*>           On entry, ALPHA specifies the scalar alpha.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] A\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          A is COMPLEX*16 array, dimension ( LDA, ka ), where ka is\nCOMMENT\t*>           k  when  TRANS = 'N' or 'n',  and is  n  otherwise.\nCOMMENT\t*>           Before entry with  TRANS = 'N' or 'n',  the  leading  n by k\nCOMMENT\t*>           part of the array  A  must contain the matrix  A,  otherwise\nCOMMENT\t*>           the leading  k by n  part of the array  A  must contain  the\nCOMMENT\t*>           matrix A.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] LDA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          LDA is INTEGER\nCOMMENT\t*>           On entry, LDA specifies the first dimension of A as declared\nCOMMENT\t*>           in  the  calling  (sub)  program.   When  TRANS = 'N' or 'n'\nCOMMENT\t*>           then  LDA must be at least  max( 1, n ), otherwise  LDA must\nCOMMENT\t*>           be at least  max( 1, k ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] B\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          B is COMPLEX*16 array, dimension ( LDB, kb ), where kb is\nCOMMENT\t*>           k  when  TRANS = 'N' or 'n',  and is  n  otherwise.\nCOMMENT\t*>           Before entry with  TRANS = 'N' or 'n',  the  leading  n by k\nCOMMENT\t*>           part of the array  B  must contain the matrix  B,  otherwise\nCOMMENT\t*>           the leading  k by n  part of the array  B  must contain  the\nCOMMENT\t*>           matrix B.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] LDB\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          LDB is INTEGER\nCOMMENT\t*>           On entry, LDB specifies the first dimension of B as declared\nCOMMENT\t*>           in  the  calling  (sub)  program.   When  TRANS = 'N' or 'n'\nCOMMENT\t*>           then  LDB must be at least  max( 1, n ), otherwise  LDB must\nCOMMENT\t*>           be at least  max( 1, k ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] BETA\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          BETA is COMPLEX*16\nCOMMENT\t*>           On entry, BETA specifies the scalar beta.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in,out] C\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          C is COMPLEX*16 array, dimension ( LDC, N )\nCOMMENT\t*>           Before entry  with  UPLO = 'U' or 'u',  the leading  n by n\nCOMMENT\t*>           upper triangular part of the array C must contain the upper\nCOMMENT\t*>           triangular part  of the  symmetric matrix  and the strictly\nCOMMENT\t*>           lower triangular part of C is not referenced.  On exit, the\nCOMMENT\t*>           upper triangular part of the array  C is overwritten by the\nCOMMENT\t*>           upper triangular part of the updated matrix.\nCOMMENT\t*>           Before entry  with  UPLO = 'L' or 'l',  the leading  n by n\nCOMMENT\t*>           lower triangular part of the array C must contain the lower\nCOMMENT\t*>           triangular part  of the  symmetric matrix  and the strictly\nCOMMENT\t*>           upper triangular part of C is not referenced.  On exit, the\nCOMMENT\t*>           lower triangular part of the array  C is overwritten by the\nCOMMENT\t*>           lower triangular part of the updated matrix.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] LDC\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          LDC is INTEGER\nCOMMENT\t*>           On entry, LDC specifies the first dimension of C as declared\nCOMMENT\t*>           in  the  calling  (sub)  program.   LDC  must  be  at  least\nCOMMENT\t*>           max( 1, n ).\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date December 2016\nCOMMENT\t*\nCOMMENT\t*> \\ingroup complex16_blas_level3\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>  Level 3 Blas routine.\nCOMMENT\t*>\nCOMMENT\t*>  -- Written on 8-February-1989.\nCOMMENT\t*>     Jack Dongarra, Argonne National Laboratory.\nCOMMENT\t*>     Iain Duff, AERE Harwell.\nCOMMENT\t*>     Jeremy Du Croz, Numerical Algorithms Group Ltd.\nCOMMENT\t*>     Sven Hammarling, Numerical Algorithms Group Ltd.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tSUBROUTINE\nIDENT\tZSYR2K\n(\t(\nIDENT\tUPLO\n,\t,\nIDENT\tTRANS\n,\t,\nIDENT\tN\n,\t,\nIDENT\tK\n,\t,\nIDENT\tALPHA\n,\t,\nIDENT\tA\n,\t,\nIDENT\tLDA\n,\t,\nIDENT\tB\n,\t,\nIDENT\tLDB\n,\t,\nIDENT\tBETA\n,\t,\nIDENT\tC\n,\t,\nIDENT\tLDC\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level3 routine (version 3.7.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     December 2016\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tALPHA\n,\t,\nIDENT\tBETA\nIDENT\tINTEGER\nIDENT\tK\n,\t,\nIDENT\tLDA\n,\t,\nIDENT\tLDB\n,\t,\nIDENT\tLDC\n,\t,\nIDENT\tN\nIDENT\tCHARACTER\nIDENT\tTRANS\n,\t,\nIDENT\tUPLO\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tA\n(\t(\nIDENT\tLDA\n,\t,\n*\t*)\n,\t,\nIDENT\tB\n(\t(\nIDENT\tLDB\n,\t,\n*\t*)\n,\t,\nIDENT\tC\n(\t(\nIDENT\tLDC\n,\t,\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. External Functions ..\nIDENT\tLOGICAL\nIDENT\tLSAME\nIDENT\tEXTERNAL\nIDENT\tLSAME\nCOMMENT\t*     ..\nCOMMENT\t*     .. External Subroutines ..\nIDENT\tEXTERNAL\nIDENT\tXERBLA\nCOMMENT\t*     ..\nCOMMENT\t*     .. Intrinsic Functions ..\nIDENT\tINTRINSIC\nIDENT\tMAX\nCOMMENT\t*     ..\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tTEMP1\n,\t,\nIDENT\tTEMP2\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tINFO\n,\t,\nIDENT\tJ\n,\t,\nIDENT\tL\n,\t,\nIDENT\tNROWA\nIDENT\tLOGICAL\nIDENT\tUPPER\nCOMMENT\t*     ..\nCOMMENT\t*     .. Parameters ..\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tONE\nIDENT\tPARAMETER\n(\t(\nIDENT\tONE\n=\t=\n(\t(\nIDENT\t1\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n,\t,\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n)\t)\n)\t)\nIDENT\tCOMPLEX\n*\t*1\nIDENT\t6\nIDENT\tZERO\nIDENT\tPARAMETER\n(\t(\nIDENT\tZERO\n=\t=\n(\t(\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n,\t,\nIDENT\t0\n.\t.\nIDENT\t0\nIDENT\tD\n+\t+\nIDENT\t0\n)\t)\n)\t)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*     Test the input parameters.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tNROWA\n=\t=\nIDENT\tN\nIDENT\tELSE\nIDENT\tNROWA\n=\t=\nIDENT\tK\nIDENT\tEND\nIDENT\tIF\nIDENT\tUPPER\n=\t=\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'U'\n)\t)\nCOMMENT\t*\nIDENT\tINFO\n=\t=\nIDENT\t0\nIDENT\tIF\n(\t(\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tUPPER\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tUPLO\n,\t,\nSTRING\t'L'\n)\t)\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t1\nIDENT\tELSE\nIDENT\tIF\n(\t(\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n+\t+\n(\t(\n.\t.\nIDENT\tNOT\n.\t.\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'T'\n)\t)\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t2\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t3\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tK\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t4\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLDA\n.\t.\nIDENT\tLT\n.\t.\nIDENT\tMAX\n(\t(\nIDENT\t1\n,\t,\nIDENT\tNROWA\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t7\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLDB\n.\t.\nIDENT\tLT\n.\t.\nIDENT\tMAX\n(\t(\nIDENT\t1\n,\t,\nIDENT\tNROWA\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t9\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tLDC\n.\t.\nIDENT\tLT\n.\t.\nIDENT\tMAX\n(\t(\nIDENT\t1\n,\t,\nIDENT\tN\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tINFO\n=\t=\nIDENT\t12\nIDENT\tEND\nIDENT\tIF\nIDENT\tIF\n(\t(\nIDENT\tINFO\n.\t.\nIDENT\tNE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tCALL\nIDENT\tXERBLA\n(\t(\nSTRING\t'ZSYR2K'\n,\t,\nIDENT\tINFO\n)\t)\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Quick return if possible.\nCOMMENT\t*\nIDENT\tIF\n(\t(\n(\t(\nIDENT\tN\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\n.\t.\nIDENT\tOR\n.\t.\n(\t(\n(\t(\n(\t(\nIDENT\tALPHA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\n.\t.\nIDENT\tOR\n.\t.\n+\t+\n(\t(\nIDENT\tK\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t0\n)\t)\n)\t)\n.\t.\nIDENT\tAND\n.\t.\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tONE\n)\t)\n)\t)\n)\t)\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     And when  alpha.eq.zero.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tALPHA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t20\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t10\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tZERO\nIDENT\t10\nIDENT\tCONTINUE\nIDENT\t20\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t40\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t30\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tBETA\n*\t*C\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t30\nIDENT\tCONTINUE\nIDENT\t40\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t60\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t50\nIDENT\tI\n=\t=\nIDENT\tJ\n,\t,\nIDENT\tN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tZERO\nIDENT\t50\nIDENT\tCONTINUE\nIDENT\t60\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t80\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t70\nIDENT\tI\n=\t=\nIDENT\tJ\n,\t,\nIDENT\tN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tBETA\n*\t*C\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t70\nIDENT\tCONTINUE\nIDENT\t80\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nCOMMENT\t*     Start the operations.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tLSAME\n(\t(\nIDENT\tTRANS\n,\t,\nSTRING\t'N'\n)\t)\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*        Form  C := alpha*A*B**T + alpha*B*A**T + C.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t130\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t90\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tZERO\nIDENT\t90\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tONE\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t100\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tBETA\n*\t*C\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t100\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tDO\nIDENT\t120\nIDENT\tL\n=\t=\nIDENT\t1\n,\t,\nIDENT\tK\nIDENT\tIF\n(\t(\n(\t(\nIDENT\tA\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\n.\t.\nIDENT\tOR\n.\t.\n(\t(\nIDENT\tB\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP1\n=\t=\nIDENT\tALPHA\n*\t*B\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\nIDENT\tTEMP2\n=\t=\nIDENT\tALPHA\n*\t*A\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\nIDENT\tDO\nIDENT\t110\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tA\n(\t(\nIDENT\tI\n,\t,\nIDENT\tL\n)\t)\n*\t*T\nIDENT\tEMP1\n+\t+\n+\t+\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tL\n)\t)\n*\t*T\nIDENT\tEMP2\nIDENT\t110\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t120\nIDENT\tCONTINUE\nIDENT\t130\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t180\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t140\nIDENT\tI\n=\t=\nIDENT\tJ\n,\t,\nIDENT\tN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tZERO\nIDENT\t140\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tONE\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t150\nIDENT\tI\n=\t=\nIDENT\tJ\n,\t,\nIDENT\tN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tBETA\n*\t*C\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t150\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tDO\nIDENT\t170\nIDENT\tL\n=\t=\nIDENT\t1\n,\t,\nIDENT\tK\nIDENT\tIF\n(\t(\n(\t(\nIDENT\tA\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\n.\t.\nIDENT\tOR\n.\t.\n(\t(\nIDENT\tB\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\n.\t.\nIDENT\tNE\n.\t.\nIDENT\tZERO\n)\t)\n)\t)\nIDENT\tTHEN\nIDENT\tTEMP1\n=\t=\nIDENT\tALPHA\n*\t*B\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\nIDENT\tTEMP2\n=\t=\nIDENT\tALPHA\n*\t*A\n(\t(\nIDENT\tJ\n,\t,\nIDENT\tL\n)\t)\nIDENT\tDO\nIDENT\t160\nIDENT\tI\n=\t=\nIDENT\tJ\n,\t,\nIDENT\tN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tA\n(\t(\nIDENT\tI\n,\t,\nIDENT\tL\n)\t)\n*\t*T\nIDENT\tEMP1\n+\t+\n+\t+\nIDENT\tB\n(\t(\nIDENT\tI\n,\t,\nIDENT\tL\n)\t)\n*\t*T\nIDENT\tEMP2\nIDENT\t160\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\t170\nIDENT\tCONTINUE\nIDENT\t180\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*        Form  C := alpha*A**T*B + alpha*B**T*A + C.\nCOMMENT\t*\nIDENT\tIF\n(\t(\nIDENT\tUPPER\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\t210\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t200\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tJ\nIDENT\tTEMP1\n=\t=\nIDENT\tZERO\nIDENT\tTEMP2\n=\t=\nIDENT\tZERO\nIDENT\tDO\nIDENT\t190\nIDENT\tL\n=\t=\nIDENT\t1\n,\t,\nIDENT\tK\nIDENT\tTEMP1\n=\t=\nIDENT\tTEMP1\n+\t+\nIDENT\tA\n(\t(\nIDENT\tL\n,\t,\nIDENT\tI\n)\t)\n*\t*B\n(\t(\nIDENT\tL\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tTEMP2\n=\t=\nIDENT\tTEMP2\n+\t+\nIDENT\tB\n(\t(\nIDENT\tL\n,\t,\nIDENT\tI\n)\t)\n*\t*A\n(\t(\nIDENT\tL\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t190\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP1\n+\t+\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP2\nIDENT\tELSE\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tBETA\n*\t*C\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP1\n+\t+\n+\t+\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP2\nIDENT\tEND\nIDENT\tIF\nIDENT\t200\nIDENT\tCONTINUE\nIDENT\t210\nIDENT\tCONTINUE\nIDENT\tELSE\nIDENT\tDO\nIDENT\t240\nIDENT\tJ\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tDO\nIDENT\t230\nIDENT\tI\n=\t=\nIDENT\tJ\n,\t,\nIDENT\tN\nIDENT\tTEMP1\n=\t=\nIDENT\tZERO\nIDENT\tTEMP2\n=\t=\nIDENT\tZERO\nIDENT\tDO\nIDENT\t220\nIDENT\tL\n=\t=\nIDENT\t1\n,\t,\nIDENT\tK\nIDENT\tTEMP1\n=\t=\nIDENT\tTEMP1\n+\t+\nIDENT\tA\n(\t(\nIDENT\tL\n,\t,\nIDENT\tI\n)\t)\n*\t*B\n(\t(\nIDENT\tL\n,\t,\nIDENT\tJ\n)\t)\nIDENT\tTEMP2\n=\t=\nIDENT\tTEMP2\n+\t+\nIDENT\tB\n(\t(\nIDENT\tL\n,\t,\nIDENT\tI\n)\t)\n*\t*A\n(\t(\nIDENT\tL\n,\t,\nIDENT\tJ\n)\t)\nIDENT\t220\nIDENT\tCONTINUE\nIDENT\tIF\n(\t(\nIDENT\tBETA\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\tZERO\n)\t)\nIDENT\tTHEN\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP1\n+\t+\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP2\nIDENT\tELSE\nIDENT\tC\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n=\t=\nIDENT\tBETA\n*\t*C\n(\t(\nIDENT\tI\n,\t,\nIDENT\tJ\n)\t)\n+\t+\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP1\n+\t+\n+\t+\nIDENT\tALPHA\n*\t*T\nIDENT\tEMP2\nIDENT\tEND\nIDENT\tIF\nIDENT\t230\nIDENT\tCONTINUE\nIDENT\t240\nIDENT\tCONTINUE\nIDENT\tEND\nIDENT\tIF\nIDENT\tEND\nIDENT\tIF\nCOMMENT\t*\nIDENT\tRETURN\nCOMMENT\t*\nCOMMENT\t*     End of ZSYR2K.\nCOMMENT\t*\nIDENT\tEND\n"
