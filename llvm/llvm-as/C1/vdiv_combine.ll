

@in = global float 0x400921FA00000000, align 4
@iin = global i32 -1023, align 4
@uin = global i32 1023, align 4

declare void @foo_int32x4_t(<4 x i32>)




define void @t1() nounwind {
entry:
  %tmp = load i32, i32* @iin, align 4
  %vecinit.i = insertelement <2 x i32> undef, i32 %tmp, i32 0
  %vecinit2.i = insertelement <2 x i32> %vecinit.i, i32 %tmp, i32 1
  %vcvt.i = sitofp <2 x i32> %vecinit2.i to <2 x float>
  %div.i = fdiv <2 x float> %vcvt.i, <float 8.000000e+00, float 8.000000e+00>
  tail call void @foo_float32x2_t(<2 x float> %div.i) nounwind
  ret void
}

declare void @foo_float32x2_t(<2 x float>)




define void @t2() nounwind {
entry:
  %tmp = load i32, i32* @uin, align 4
  %vecinit.i = insertelement <2 x i32> undef, i32 %tmp, i32 0
  %vecinit2.i = insertelement <2 x i32> %vecinit.i, i32 %tmp, i32 1
  %vcvt.i = uitofp <2 x i32> %vecinit2.i to <2 x float>
  %div.i = fdiv <2 x float> %vcvt.i, <float 8.000000e+00, float 8.000000e+00>
  tail call void @foo_float32x2_t(<2 x float> %div.i) nounwind
  ret void
}




define void @t3() nounwind {
entry:
  %tmp = load i32, i32* @iin, align 4
  %vecinit.i = insertelement <2 x i32> undef, i32 %tmp, i32 0
  %vecinit2.i = insertelement <2 x i32> %vecinit.i, i32 %tmp, i32 1
  %vcvt.i = sitofp <2 x i32> %vecinit2.i to <2 x float>
  %div.i = fdiv <2 x float> %vcvt.i, <float 0x401B333340000000, float 0x401B333340000000>
  tail call void @foo_float32x2_t(<2 x float> %div.i) nounwind
  ret void
}




define void @t4() nounwind {
entry:
  %tmp = load i32, i32* @iin, align 4
  %vecinit.i = insertelement <2 x i32> undef, i32 %tmp, i32 0
  %vecinit2.i = insertelement <2 x i32> %vecinit.i, i32 %tmp, i32 1
  %vcvt.i = sitofp <2 x i32> %vecinit2.i to <2 x float>
  %div.i = fdiv <2 x float> %vcvt.i, <float 0x4200000000000000, float 0x4200000000000000>
  tail call void @foo_float32x2_t(<2 x float> %div.i) nounwind
  ret void
}




define void @t5() nounwind {
entry:
  %tmp = load i32, i32* @iin, align 4
  %vecinit.i = insertelement <2 x i32> undef, i32 %tmp, i32 0
  %vecinit2.i = insertelement <2 x i32> %vecinit.i, i32 %tmp, i32 1
  %vcvt.i = sitofp <2 x i32> %vecinit2.i to <2 x float>
  %div.i = fdiv <2 x float> %vcvt.i, <float 0x41F0000000000000, float 0x41F0000000000000>
  tail call void @foo_float32x2_t(<2 x float> %div.i) nounwind
  ret void
}




define void @t6() nounwind {
entry:
  %tmp = load i32, i32* @iin, align 4
  %vecinit.i = insertelement <4 x i32> undef, i32 %tmp, i32 0
  %vecinit2.i = insertelement <4 x i32> %vecinit.i, i32 %tmp, i32 1
  %vecinit4.i = insertelement <4 x i32> %vecinit2.i, i32 %tmp, i32 2
  %vecinit6.i = insertelement <4 x i32> %vecinit4.i, i32 %tmp, i32 3
  %vcvt.i = sitofp <4 x i32> %vecinit6.i to <4 x float>
  %div.i = fdiv <4 x float> %vcvt.i, <float 8.000000e+00, float 8.000000e+00, float 8.000000e+00, float 8.000000e+00>
  tail call void @foo_float32x4_t(<4 x float> %div.i) nounwind
  ret void
}

declare void @foo_float32x4_t(<4 x float>)

define <4 x float> @fix_unsigned_i16_to_float(<4 x i16> %in) {




    %conv = uitofp <4 x i16> %in to <4 x float>
    %shift = fdiv <4 x float> %conv, <float 2.0, float 2.0, float 2.0, float 2.0>
    ret <4 x float> %shift
}

define <4 x float> @fix_signed_i16_to_float(<4 x i16> %in) {




    %conv = sitofp <4 x i16> %in to <4 x float>
    %shift = fdiv <4 x float> %conv, <float 2.0, float 2.0, float 2.0, float 2.0>
    ret <4 x float> %shift
}

define <2 x float> @fix_i64_to_float(<2 x i64> %in) {




    %conv = uitofp <2 x i64> %in to <2 x float>
    %shift = fdiv <2 x float> %conv, <float 2.0, float 2.0>
    ret <2 x float> %shift
}

define <2 x double> @fix_i64_to_double(<2 x i64> %in) {




    %conv = uitofp <2 x i64> %in to <2 x double>
    %shift = fdiv <2 x double> %conv, <double 2.0, double 2.0>
    ret <2 x double> %shift
}

