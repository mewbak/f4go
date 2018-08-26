package main

import "math"
//*> \brief \b DROTG
//*
//*  =========== DOCUMENTATION ===========
//*
//* Online html documentation available at
//*            http://www.netlib.org/lapack/explore-html/
//*
//*  Definition:
//*  ===========
//*
//*       SUBROUTINE DROTG(DA,DB,C,S)
//*
//*       .. Scalar Arguments ..
//*       DOUBLE PRECISION C,DA,DB,S
//*       ..
//*
//*
//*> \par Purpose:
//*  =============
//*>
//*> \verbatim
//*>
//*>    DROTG construct givens plane rotation.
//*> \endverbatim
//*
//*  Arguments:
//*  ==========
//*
//*> \param[in] DA
//*> \verbatim
//*>          DA is DOUBLE PRECISION
//*> \endverbatim
//*>
//*> \param[in] DB
//*> \verbatim
//*>          DB is DOUBLE PRECISION
//*> \endverbatim
//*>
//*> \param[out] C
//*> \verbatim
//*>          C is DOUBLE PRECISION
//*> \endverbatim
//*>
//*> \param[out] S
//*> \verbatim
//*>          S is DOUBLE PRECISION
//*> \endverbatim
//*
//*  Authors:
//*  ========
//*
//*> \author Univ. of Tennessee
//*> \author Univ. of California Berkeley
//*> \author Univ. of Colorado Denver
//*> \author NAG Ltd.
//*
//*> \date November 2017
//*
//*> \ingroup double_blas_level1
//*
//*> \par Further Details:
//*  =====================
//*>
//*> \verbatim
//*>
//*>     jack dongarra, linpack, 3/11/78.
//*> \endverbatim
//*>
//*  =====================================================================
func DROTG(DA *float64, DB *float64, C *float64, S *float64) {
	var R float64
	var ROE float64
	var SCALE float64
	var Z float64
	//*
	//*  -- Reference BLAS level1 routine (version 3.8.0) --
	//*  -- Reference BLAS is a software package provided by Univ. of Tennessee,    --
	//*  -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
	//*     November 2017
	//*
	//*     .. Scalar Arguments ..
	//*     ..
	//*
	//*  =====================================================================
	//*
	//*     .. Local Scalars ..
	//*     ..
	//*     .. Intrinsic Functions ..
	//*     ..
	ROE = (*DB)
	if DABS(DA) > DABS(DB) {
		ROE = (*DA)
	}
	SCALE = DABS(DA) + DABS(DB)
	if SCALE == 0.0e0 {
		(*C) = 1.0e0
		(*S) = 0.0e0
		R = 0.0e0
		Z = 0.0e0
	} else {
		R = SCALE * DSQRT(math.Pow(((*DA)/SCALE), 2)+math.Pow(((*DB)/SCALE), 2))
		R = DSIGN(func()*float64{y:=1.0e0;return &y}(), &(ROE)) * R
		(*C) = (*DA) / R
		(*S) = (*DB) / R
		Z = 1.0e0
		if DABS(DA) > DABS(DB) {
			Z = (*S)
		}
		if DABS(DB) >= DABS(DA) && (*C) != 0.0e0 {
			Z = 1.0e0 / (*C)
		}
	}
	(*DA) = R
	(*DB) = Z
	return
}