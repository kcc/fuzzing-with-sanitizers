

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"
	%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
	%struct.__FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, %struct._reent*, i32 }
	%struct.__sbuf = type { i8*, i32 }
	%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
	%struct._glue = type { %struct._glue*, i32, %struct.__FILE* }
	%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
	%struct._reent = type { i32, %struct.__FILE*, %struct.__FILE*, %struct.__FILE*, i32, [25 x i8], i32, i8*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, { { [30 x i8*], [30 x i32] } }, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__FILE] }
@_impure_ptr = external global %struct._reent*		

define double @_erand48_r(%struct._reent* %r, i16* %xseed) nounwind {
entry:
	tail call void @__dorand48( %struct._reent* %r, i16* %xseed ) nounwind
	load i16, i16* %xseed, align 2		
	uitofp i16 %0 to double		
	tail call double @ldexp( double %1, i32 -48 ) nounwind		
	getelementptr i16, i16* %xseed, i32 1		
	load i16, i16* %3, align 2		
	uitofp i16 %4 to double		
	tail call double @ldexp( double %5, i32 -32 ) nounwind		
	fadd double %2, %6		
	getelementptr i16, i16* %xseed, i32 2		
	load i16, i16* %8, align 2		
	uitofp i16 %9 to double		
	tail call double @ldexp( double %10, i32 -16 ) nounwind		
	fadd double %7, %11		
	ret double %12
}

declare void @__dorand48(%struct._reent*, i16*)

declare double @ldexp(double, i32)

define double @erand48(i16* %xseed) nounwind {
entry:
	load %struct._reent*, %struct._reent** @_impure_ptr, align 4		
	tail call void @__dorand48( %struct._reent* %0, i16* %xseed ) nounwind
	load i16, i16* %xseed, align 2		
	uitofp i16 %1 to double		
	tail call double @ldexp( double %2, i32 -48 ) nounwind		
	getelementptr i16, i16* %xseed, i32 1		
	load i16, i16* %4, align 2		
	uitofp i16 %5 to double		
	tail call double @ldexp( double %6, i32 -32 ) nounwind		
	fadd double %3, %7		
	getelementptr i16, i16* %xseed, i32 2		
	load i16, i16* %9, align 2		
	uitofp i16 %10 to double		
	tail call double @ldexp( double %11, i32 -16 ) nounwind		
	fadd double %8, %12		
	ret double %13
}
