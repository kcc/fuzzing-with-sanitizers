



target triple = "x86_64-unknown-unknown"

define <4 x i32> @test1(<4 x i32> %a) #0 {














































  %div = udiv <4 x i32> %a, <i32 7, i32 7, i32 7, i32 7>
  ret <4 x i32> %div
}

define <8 x i32> @test2(<8 x i32> %a) #0 {


































































  %div = udiv <8 x i32> %a, <i32 7, i32 7, i32 7, i32 7,i32 7, i32 7, i32 7, i32 7>
  ret <8 x i32> %div
}

define <8 x i16> @test3(<8 x i16> %a) #0 {




























  %div = udiv <8 x i16> %a, <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  ret <8 x i16> %div
}

define <16 x i16> @test4(<16 x i16> %a) #0 {








































  %div = udiv <16 x i16> %a, <i16 7, i16 7, i16 7, i16 7,i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7,i16 7, i16 7, i16 7, i16 7>
  ret <16 x i16> %div
}

define <8 x i16> @test5(<8 x i16> %a) #0 {

























  %div = sdiv <8 x i16> %a, <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  ret <8 x i16> %div
}

define <16 x i16> @test6(<16 x i16> %a) #0 {





































  %div = sdiv <16 x i16> %a, <i16 7, i16 7, i16 7, i16 7,i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7,i16 7, i16 7, i16 7, i16 7>
  ret <16 x i16> %div
}

define <16 x i8> @test7(<16 x i8> %a) #0 {


































































































































































































































































































































































































































































































































































  %div = sdiv <16 x i8> %a, <i8 7, i8 7, i8 7, i8 7,i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7,i8 7, i8 7, i8 7, i8 7>
  ret <16 x i8> %div
}

define <4 x i32> @test8(<4 x i32> %a) #0 {

























































  %div = sdiv <4 x i32> %a, <i32 7, i32 7, i32 7, i32 7>
  ret <4 x i32> %div
}

define <8 x i32> @test9(<8 x i32> %a) #0 {

























































































  %div = sdiv <8 x i32> %a, <i32 7, i32 7, i32 7, i32 7,i32 7, i32 7, i32 7, i32 7>
  ret <8 x i32> %div
}

define <8 x i32> @test10(<8 x i32> %a) #0 {





























































































  %rem = urem <8 x i32> %a, <i32 7, i32 7, i32 7, i32 7,i32 7, i32 7, i32 7, i32 7>
  ret <8 x i32> %rem
}

define <8 x i32> @test11(<8 x i32> %a) #0 {












































































































  %rem = srem <8 x i32> %a, <i32 7, i32 7, i32 7, i32 7,i32 7, i32 7, i32 7, i32 7>
  ret <8 x i32> %rem
}

define <2 x i16> @test12() #0 {














  %I8 = insertelement <2 x i16> zeroinitializer, i16 -1, i32 0
  %I9 = insertelement <2 x i16> %I8, i16 -1, i32 1
  %B9 = urem <2 x i16> %I9, %I9
  ret <2 x i16> %B9
}

define <4 x i32> @PR20355(<4 x i32> %a) #0 {

















































entry:
  %sdiv = sdiv <4 x i32> %a, <i32 3, i32 3, i32 3, i32 3>
  ret <4 x i32> %sdiv
}

attributes #0 = { nounwind }
