





























@vc = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@vs = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@vi = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@vcr = common global <16 x i8> zeroinitializer, align 16
@vsr = common global <8 x i16> zeroinitializer, align 16
@vir = common global <4 x i32> zeroinitializer, align 16


define void @cfoo() {
entry:
  %0 = load <16 x i8>, <16 x i8>* @vc, align 16
  %vecinit30 = shufflevector <16 x i8> %0, <16 x i8> undef, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <16 x i8> %vecinit30, <16 x i8>* @vcr, align 16
  ret void
}


define void @sfoo() {
entry:
  %0 = load <8 x i16>, <8 x i16>* @vs, align 16
  %vecinit14 = shufflevector <8 x i16> %0, <8 x i16> undef, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i16> %vecinit14, <8 x i16>* @vsr, align 16
  ret void
}


define void @ifoo() {
entry:
  %0 = load <4 x i32>, <4 x i32>* @vi, align 16
  %vecinit6 = shufflevector <4 x i32> %0, <4 x i32> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %vecinit6, <4 x i32>* @vir, align 16
  ret void
}




























