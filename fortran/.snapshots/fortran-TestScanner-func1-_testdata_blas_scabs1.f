(string) (len=1942) "COMMENT\t> \\brief \\b SCABS1\nCOMMENT\t*\nCOMMENT\t*  =========== DOCUMENTATION ===========\nCOMMENT\t*\nCOMMENT\t* Online html documentation available at\nCOMMENT\t*            http://www.netlib.org/lapack/explore-html/\nCOMMENT\t*\nCOMMENT\t*  Definition:\nCOMMENT\t*  ===========\nCOMMENT\t*\nCOMMENT\t*       REAL FUNCTION SCABS1(Z)\nCOMMENT\t*\nCOMMENT\t*       .. Scalar Arguments ..\nCOMMENT\t*       COMPLEX Z\nCOMMENT\t*       ..\nCOMMENT\t*\nCOMMENT\t*\nCOMMENT\t*> \\par Purpose:\nCOMMENT\t*  =============\nCOMMENT\t*>\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>\nCOMMENT\t*> SCABS1 computes |Re(.)| + |Im(.)| of a complex number\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Arguments:\nCOMMENT\t*  ==========\nCOMMENT\t*\nCOMMENT\t*> \\param[in] Z\nCOMMENT\t*> \\verbatim\nCOMMENT\t*>          Z is COMPLEX\nCOMMENT\t*> \\endverbatim\nCOMMENT\t*\nCOMMENT\t*  Authors:\nCOMMENT\t*  ========\nCOMMENT\t*\nCOMMENT\t*> \\author Univ. of Tennessee\nCOMMENT\t*> \\author Univ. of California Berkeley\nCOMMENT\t*> \\author Univ. of Colorado Denver\nCOMMENT\t*> \\author NAG Ltd.\nCOMMENT\t*\nCOMMENT\t*> \\date November 2017\nCOMMENT\t*\nCOMMENT\t*> \\ingroup single_blas_level1\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nIDENT\tREAL\nIDENT\tFUNCTION\nIDENT\tSCABS1\n(\t(\nIDENT\tZ\n)\t)\nCOMMENT\t*\nCOMMENT\t*  -- Reference BLAS level1 routine (version 3.8.0) --\nCOMMENT\t*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --\nCOMMENT\t*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--\nCOMMENT\t*     November 2017\nCOMMENT\t*\nCOMMENT\t*     .. Scalar Arguments ..\nIDENT\tCOMPLEX\nIDENT\tZ\nCOMMENT\t*     ..\nCOMMENT\t*\nCOMMENT\t*  =====================================================================\nCOMMENT\t*\nCOMMENT\t*     .. Intrinsic Functions ..\nIDENT\tINTRINSIC\nIDENT\tABS\n,\t,\nIDENT\tAIMAG\n,\t,\nIDENT\tREAL\nCOMMENT\t*     ..\nIDENT\tSCABS1\n=\t=\nIDENT\tABS\n(\t(\nIDENT\tREAL\n(\t(\nIDENT\tZ\n)\t)\n)\t)\n+\t+\nIDENT\tABS\n(\t(\nIDENT\tAIMAG\n(\t(\nIDENT\tZ\n)\t)\n)\t)\nIDENT\tRETURN\nIDENT\tEND\n"