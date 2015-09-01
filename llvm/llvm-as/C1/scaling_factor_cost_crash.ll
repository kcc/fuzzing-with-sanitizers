
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-win32"



define void @scalingFactorCrash() {
  br i1 undef, label %1, label %24


  br i1 undef, label %2, label %24


  br i1 undef, label %3, label %24


  br i1 undef, label %4, label %24


  br i1 undef, label %24, label %6


  br i1 undef, label %24, label %7


  br i1 undef, label %6, label %5


  br label %8


  br i1 undef, label %9, label %8


  br i1 undef, label %7, label %10


  br i1 undef, label %24, label %11


  br i1 undef, label %15, label %13


  br label %15


  br label %14


  br i1 undef, label %14, label %12


  br i1 undef, label %16, label %24


  %17 = phi i32 [ %21, %16 ], [ undef, %15 ]
  %18 = sub i32 %17, 1623127498
  %19 = getelementptr inbounds i32, i32* undef, i32 %18
  store i32 undef, i32* %19, align 4
  %20 = add i32 %17, 1623127499
  %21 = add i32 %20, -1623127498
  %22 = add i32 %21, -542963121
  %23 = icmp ult i32 %22, undef
  br i1 undef, label %16, label %24


  ret void
}
