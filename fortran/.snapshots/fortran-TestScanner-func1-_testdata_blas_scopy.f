(string) (len=5137) "COMMENT\t> \\brief \\b SCOPY\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       SUBROUTINE SCOPY(N,SX,INCX,SY,INCY)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       INTEGER INCX,INCY,N\nCOMMENT\t*       ..\nCOMMENT\t*       .. Array Arguments ..\nCOMMENT\t*       REAL SX(*),SY(*)\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>    SCOPY copies a vector, x, to a vector, y.\nCOMMENT\t*>    uses unrolled loops for increments equal to 1.\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] N\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          N is INTEGER\nCOMMENT\t*>         number of elements in input vector(s)\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] SX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          SX is REAL array, dimension ( 1 + ( N - 1 )*abs( INCX ) )\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCX\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCX is INTEGER\nCOMMENT\t*>         storage spacing between elements of SX\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[out] SY\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          SY is REAL array, dimension ( 1 + ( N - 1 )*abs( INCY ) )\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*> \\param[in] INCY\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          INCY is INTEGER\nCOMMENT\t*>         storage spacing between elements of SY\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date November 2017\nCOMMENT\t*\nCOMMENT\t*> \\ingroup single_blas_level1\nCOMMENT\t*\nCOMMENT\t*> \\par Further Details:\nCOMMENT\t*  =====================\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*>     jack dongarra, linpack, 3/11/78.\nCOMMENT\t*>     modified 12/3/93, array(1) declarations changed to array(*)\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*>\nCOMMENT\t*  =====================================================================\nIDENT\tSUBROUTINE\nIDENT\tSCOPY\n(\t(\nIDENT\tN\n,\t,\nIDENT\tSX\n,\t,\nIDENT\tINCX\n,\t,\nIDENT\tSY\n,\t,\nIDENT\tINCY\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level1 routine (version 3.8.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     November 2017\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tINTEGER\nIDENT\tINCX\n,\t,\nIDENT\tINCY\n,\t,\nIDENT\tN\nCOMMENT\t*     ..\nCOMMENT\t*     .. Array Arguments ..\nIDENT\tREAL\nIDENT\tSX\n(\t(\n*\t*)\n,\t,\nIDENT\tSY\n(\t(\n*\t*)\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. Local Scalars ..\nIDENT\tINTEGER\nIDENT\tI\n,\t,\nIDENT\tIX\n,\t,\nIDENT\tIY\n,\t,\nIDENT\tM\n,\t,\nIDENT\tMP1\nCOMMENT\t*     ..\nCOMMENT\t*     .. Intrinsic Functions ..\nIDENT\tINTRINSIC\nIDENT\tMOD\nCOMMENT\t*     ..\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tRETURN\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n.\t.\nIDENT\tAND\n.\t.\nIDENT\tINCY\n.\t.\nIDENT\tEQ\n.\t.\nIDENT\t1\n)\t)\nIDENT\tTHEN\nCOMMENT\t*\nCOMMENT\t*        code for both increments equal to 1\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*        clean-up loop\nCOMMENT\t*\nIDENT\tM\n=\t=\nIDENT\tMOD\n(\t(\nIDENT\tN\n,\t,\nIDENT\t7\n)\t)\nIDENT\tIF\n(\t(\nIDENT\tM\n.\t.\nIDENT\tNE\n.\t.\nIDENT\t0\n)\t)\nIDENT\tTHEN\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tM\nIDENT\tSY\n(\t(\nIDENT\tI\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n)\t)\nIDENT\tEND\nIDENT\tDO\nIDENT\tIF\n(\t(\nIDENT\tN\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t7\n)\t)\nIDENT\tRETURN\nIDENT\tEND\nIDENT\tIF\nIDENT\tMP1\n=\t=\nIDENT\tM\n+\t+\nIDENT\t1\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\tMP1\n,\t,\nIDENT\tN\n,\t,\nIDENT\t7\nIDENT\tSY\n(\t(\nIDENT\tI\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n)\t)\nIDENT\tSY\n(\t(\nIDENT\tI\n+\t+\nIDENT\t1\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n+\t+\nIDENT\t1\n)\t)\nIDENT\tSY\n(\t(\nIDENT\tI\n+\t+\nIDENT\t2\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n+\t+\nIDENT\t2\n)\t)\nIDENT\tSY\n(\t(\nIDENT\tI\n+\t+\nIDENT\t3\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n+\t+\nIDENT\t3\n)\t)\nIDENT\tSY\n(\t(\nIDENT\tI\n+\t+\nIDENT\t4\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n+\t+\nIDENT\t4\n)\t)\nIDENT\tSY\n(\t(\nIDENT\tI\n+\t+\nIDENT\t5\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n+\t+\nIDENT\t5\n)\t)\nIDENT\tSY\n(\t(\nIDENT\tI\n+\t+\nIDENT\t6\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tI\n+\t+\nIDENT\t6\n)\t)\nIDENT\tEND\nIDENT\tDO\nIDENT\tELSE\nCOMMENT\t*\nCOMMENT\t*        code for unequal increments or equal increments\nCOMMENT\t*          not equal to 1\nCOMMENT\t*\nIDENT\tIX\n=\t=\nIDENT\t1\nIDENT\tIY\n=\t=\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tINCX\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tIX\n=\t=\n(\t(\n-\t-\nIDENT\tN\n+\t+\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCX\n+\t+\nIDENT\t1\nIDENT\tIF\n(\t(\nIDENT\tINCY\n.\t.\nIDENT\tLT\n.\t.\nIDENT\t0\n)\t)\nIDENT\tIY\n=\t=\n(\t(\n-\t-\nIDENT\tN\n+\t+\nIDENT\t1\n)\t)\n*\t*I\nIDENT\tNCY\n+\t+\nIDENT\t1\nIDENT\tDO\nIDENT\tI\n=\t=\nIDENT\t1\n,\t,\nIDENT\tN\nIDENT\tSY\n(\t(\nIDENT\tIY\n)\t)\n=\t=\nIDENT\tSX\n(\t(\nIDENT\tIX\n)\t)\nIDENT\tIX\n=\t=\nIDENT\tIX\n+\t+\nIDENT\tINCX\nIDENT\tIY\n=\t=\nIDENT\tIY\n+\t+\nIDENT\tINCY\nIDENT\tEND\nIDENT\tDO\nIDENT\tEND\nIDENT\tIF\nIDENT\tRETURN\nIDENT\tEND\n"
