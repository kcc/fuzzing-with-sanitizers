




define void @test0(<1 x i64>* %x) {














entry:
  %tmp2 = load <1 x i64>, <1 x i64>* %x
  %tmp6 = bitcast <1 x i64> %tmp2 to <2 x i32>
  %tmp9 = shufflevector <2 x i32> %tmp6, <2 x i32> undef, <2 x i32> < i32 1, i32 1 >
  %tmp10 = bitcast <2 x i32> %tmp9 to <1 x i64>
  store <1 x i64> %tmp10, <1 x i64>* %x
  ret void
}

define void @test1() {





































entry:
  %tmp528 = bitcast <8 x i8> zeroinitializer to <2 x i32>
  %tmp529 = and <2 x i32> %tmp528, bitcast (<4 x i16> < i16 -32640, i16 16448, i16 8224, i16 4112 > to <2 x i32>)
  %tmp542 = bitcast <2 x i32> %tmp529 to <4 x i16>
  %tmp543 = add <4 x i16> %tmp542, < i16 0, i16 16448, i16 24672, i16 28784 >
  %tmp555 = bitcast <4 x i16> %tmp543 to <8 x i8>
  %tmp556 = bitcast <8 x i8> %tmp555 to x86_mmx
  %tmp557 = bitcast <8 x i8> zeroinitializer to x86_mmx
  tail call void @llvm.x86.mmx.maskmovq( x86_mmx %tmp557, x86_mmx %tmp556, i8* null)
  ret void
}

@tmp_V2i = common global <2 x i32> zeroinitializer

define void @test2() nounwind {















entry:
  %0 = load <2 x i32>, <2 x i32>* @tmp_V2i, align 8
  %1 = shufflevector <2 x i32> %0, <2 x i32> undef, <2 x i32> zeroinitializer
  store <2 x i32> %1, <2 x i32>* @tmp_V2i, align 8
  ret void
}

declare void @llvm.x86.mmx.maskmovq(x86_mmx, x86_mmx, i8*)
