





define void @test_hi_short3(<3 x i16> * nocapture %srcA, <2 x i16> * nocapture %dst) nounwind {
entry:

  %0 = load <3 x i16> , <3 x i16> * %srcA, align 8
  %1 = shufflevector <3 x i16> %0, <3 x i16> undef, <2 x i32> <i32 2, i32 undef>
  store <2 x i16> %1, <2 x i16> * %dst, align 4
  ret void
}

