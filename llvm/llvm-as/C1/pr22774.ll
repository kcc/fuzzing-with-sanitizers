

@in = global <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, align 32
@out = global <2 x i64> zeroinitializer, align 16

define i32 @_Z3foov() {
entry:



  %0 = load <4 x i64>, <4 x i64>* @in, align 32
  %vecext = extractelement <4 x i64> %0, i32 0
  %vecinit = insertelement <2 x i64> undef, i64 %vecext, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, <2 x i64>* @out, align 16
  ret i32 0
}
