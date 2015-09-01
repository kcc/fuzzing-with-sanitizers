


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv7-none-linux-gnueabi"

%0 = type { <4 x float> }

define arm_aapcs_vfpcc void @foo(float, i1 zeroext, i1 zeroext) nounwind uwtable {
  br i1 undef, label %4, label %5


  unreachable


  br i1 undef, label %7, label %6


  unreachable


  br i1 undef, label %8, label %10


  br i1 undef, label %9, label %10


  br i1 undef, label %11, label %10


  unreachable


  br i1 undef, label %13, label %12


  unreachable


  br i1 undef, label %15, label %14


  unreachable


  br i1 undef, label %18, label %16


  br i1 undef, label %17, label %18


  unreachable


  br i1 undef, label %68, label %19


  br label %20


  br i1 undef, label %21, label %20


  br i1 undef, label %22, label %68


  br i1 undef, label %23, label %24


  unreachable


  br i1 undef, label %26, label %25


  unreachable


  br i1 undef, label %28, label %27


  unreachable


  br i1 undef, label %29, label %30, !prof !0


  br label %30


  br i1 undef, label %31, label %32, !prof !0


  br label %32


  br i1 undef, label %34, label %33


  unreachable


  br i1 undef, label %35, label %36, !prof !0


  br label %36


  br i1 undef, label %37, label %38, !prof !0


  br label %38


  br i1 undef, label %39, label %67


  br i1 undef, label %40, label %41


  br i1 undef, label %64, label %41


  br i1 undef, label %64, label %42


  %43 = fadd <4 x float> undef, undef
  %44 = fadd <4 x float> undef, undef
  %45 = fmul <4 x float> undef, undef
  %46 = fmul <4 x float> %45, %43
  %47 = fmul <4 x float> undef, %44
  %48 = load <4 x float>, <4 x float>* undef, align 8
  %49 = bitcast <4 x float> %48 to <2 x i64>
  %50 = shufflevector <2 x i64> %49, <2 x i64> undef, <1 x i32> <i32 1>
  %51 = bitcast <1 x i64> %50 to <2 x float>
  %52 = shufflevector <2 x float> %51, <2 x float> undef, <4 x i32> zeroinitializer
  %53 = bitcast <4 x float> %52 to <2 x i64>
  %54 = shufflevector <2 x i64> %53, <2 x i64> undef, <1 x i32> zeroinitializer
  %55 = bitcast <1 x i64> %54 to <2 x float>
  %56 = extractelement <2 x float> %55, i32 0
  %57 = insertelement <4 x float> undef, float %56, i32 2
  %58 = insertelement <4 x float> %57, float 1.000000e+00, i32 3
  %59 = fsub <4 x float> %47, %58
  %60 = fmul <4 x float> undef, undef
  %61 = fmul <4 x float> %59, %60
  %62 = fmul <4 x float> %61, <float 6.000000e+01, float 6.000000e+01, float 6.000000e+01, float 6.000000e+01>
  %63 = fadd <4 x float> %47, %62
  store <4 x float> %46, <4 x float>* undef, align 8
  call arm_aapcs_vfpcc  void @bar(%0* undef, float 0.000000e+00) nounwind
  call arm_aapcs_vfpcc  void @bar(%0* undef, float 0.000000e+00) nounwind
  store <4 x float> %63, <4 x float>* undef, align 8
  unreachable


  br i1 undef, label %65, label %66


  unreachable


  unreachable


  unreachable


  ret void
}

declare arm_aapcs_vfpcc void @bar(%0*, float)

!0 = !{!"branch_weights", i32 64, i32 4}
