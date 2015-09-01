





define <16 x i1> @test1() {
  ret <16 x i1> zeroinitializer
}











define <16 x i1> @test2(<16 x i1>%a, <16 x i1>%b) {
  %c = and <16 x i1>%a, %b
  ret <16 x i1> %c
}






define <8 x i1> @test3(<8 x i1>%a, <8 x i1>%b) {
  %c = and <8 x i1>%a, %b
  ret <8 x i1> %c
}






define <4 x i1> @test4(<4 x i1>%a, <4 x i1>%b) {
  %c = and <4 x i1>%a, %b
  ret <4 x i1> %c
}






declare <8 x i1> @func8xi1(<8 x i1> %a)
define <8 x i32> @test5(<8 x i32>%a, <8 x i32>%b) {
  %cmpRes = icmp sgt <8 x i32>%a, %b
  %resi = call <8 x i1> @func8xi1(<8 x i1> %cmpRes)
  %res = sext <8 x i1>%resi to <8 x i32>
  ret <8 x i32> %res
}

declare <16 x i1> @func16xi1(<16 x i1> %a)








define <16 x i32> @test6(<16 x i32>%a, <16 x i32>%b) {
  %cmpRes = icmp sgt <16 x i32>%a, %b
  %resi = call <16 x i1> @func16xi1(<16 x i1> %cmpRes)
  %res = sext <16 x i1>%resi to <16 x i32>
  ret <16 x i32> %res
}

declare <4 x i1> @func4xi1(<4 x i1> %a)






define <4 x i32> @test7(<4 x i32>%a, <4 x i32>%b) {
  %cmpRes = icmp sgt <4 x i32>%a, %b
  %resi = call <4 x i1> @func4xi1(<4 x i1> %cmpRes)
  %res = sext <4 x i1>%resi to <4 x i32>
  ret <4 x i32> %res
}





define <8 x i1> @test7a(<8 x i32>%a, <8 x i32>%b) {
  %cmpRes = icmp sgt <8 x i32>%a, %b
  %resi = call <8 x i1> @func8xi1(<8 x i1> %cmpRes)
  %res = and <8 x i1>%resi,  <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false>
  ret <8 x i1> %res
}










define <16 x i8> @test8(<16 x i8> %a1, <16 x i8> %a2, i1 %cond) {
  %res = select i1 %cond, <16 x i8> %a1, <16 x i8> %a2
  ret <16 x i8> %res
}




define i1 @test9(double %a, double %b) {
  %c = fcmp ugt double %a, %b
  ret i1 %c
}








define i32 @test10(i32 %a, i32 %b, i1 %cond) {
  %c = select i1 %cond, i32 %a, i32 %b
  ret i32 %c
}




define i1 @test11(i32 %a, i32 %b) {
  %c = icmp sgt i32 %a, %b
  ret i1 %c
}








define i32 @test12(i32 %a1, i32 %a2, i32 %b1) {
  %cond = call i1 @test11(i32 %a1, i32 %b1)
  %res = call i32 @test10(i32 %a1, i32 %a2, i1 %cond)
  %res1 = select i1 %cond, i32 %res, i32 0
  ret i32 %res1
}