




define <8 x i1> @test1() {
entry:
  %Shuff = shufflevector <8 x i1> <i1 0, i1 1, i1 2, i1 3, i1 4, i1 5, i1 6,
                                   i1 7>,
                         <8 x i1> <i1 0, i1 1, i1 2, i1 3, i1 4, i1 5, i1 6,
                                   i1 7>,
                         <8 x i32> <i32 2, i32 undef, i32 6, i32 undef, i32 10,
                                    i32 12, i32 14, i32 0>
  ret <8 x i1> %Shuff
}













define <8 x i1>@test2() {
bb:
  %Shuff = shufflevector <8 x i1> zeroinitializer,
     <8 x i1> <i1 0, i1 1, i1 1, i1 0, i1 0, i1 1, i1 0, i1 0>,
     <8 x i32> <i32 2, i32 undef, i32 6, i32 undef, i32 10, i32 12, i32 14,
                i32 0>
  ret <8 x i1> %Shuff
}



define <16 x i1> @test3(i1* %ptr, i32 %v) {
bb:
  %Shuff = shufflevector <16 x i1> <i1 0, i1 1, i1 1, i1 0, i1 0, i1 1, i1 0, i1 0, i1 0, i1 1, i1 1, i1 0, i1 0, i1 1, i1 0, i1 0>, <16 x i1> undef,
     <16 x i32> <i32 2, i32 undef, i32 6, i32 undef, i32 10, i32 12, i32 14,
                 i32 0, i32 2, i32 undef, i32 6, i32 undef, i32 10, i32 12,
                 i32 14, i32 0>
  ret <16 x i1> %Shuff
}




















define <16 x i1> @test4(i1* %ptr, i32 %v) {
bb:
  %Shuff = shufflevector <16 x i1> zeroinitializer,
     <16 x i1> <i1 0, i1 1, i1 1, i1 0, i1 0, i1 1, i1 0, i1 0, i1 0, i1 1,
                i1 1, i1 0, i1 0, i1 1, i1 0, i1 0>,
     <16 x i32> <i32 2, i32 1, i32 6, i32 18, i32 10, i32 12, i32 14, i32 0,
                 i32 2, i32 31, i32 6, i32 30, i32 10, i32 12, i32 14, i32 0>
  ret <16 x i1> %Shuff
}
