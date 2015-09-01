
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"

define zeroext i16 @test1(i16 zeroext %x) nounwind {
entry:
	%div = udiv i16 %x, 33
	ret i16 %div




}

define zeroext i16 @test2(i8 signext %x, i16 zeroext %c) nounwind readnone ssp noredzone {
entry:
  %div = udiv i16 %c, 3
  ret i16 %div





}

define zeroext i8 @test3(i8 zeroext %x, i8 zeroext %c) nounwind readnone ssp noredzone {
entry:
  %div = udiv i8 %c, 3
  ret i8 %div







}

define signext i16 @test4(i16 signext %x) nounwind {
entry:
	%div = sdiv i16 %x, 33		
	ret i16 %div


}

define i32 @test5(i32 %A) nounwind {
        %tmp1 = udiv i32 %A, 1577682821         
        ret i32 %tmp1



}

define signext i16 @test6(i16 signext %x) nounwind {
entry:
  %div = sdiv i16 %x, 10
  ret i16 %div





}

define i32 @test7(i32 %x) nounwind {
  %div = udiv i32 %x, 28
  ret i32 %div






}


define i8 @test8(i8 %x) nounwind {
  %div = udiv i8 %x, 78
  ret i8 %div





}

define i8 @test9(i8 %x) nounwind {
  %div = udiv i8 %x, 116
  ret i8 %div





}

define i32 @testsize1(i32 %x) minsize nounwind {
entry:
	%div = sdiv i32 %x, 32
	ret i32 %div


}

define i32 @testsize2(i32 %x) minsize nounwind {
entry:
	%div = sdiv i32 %x, 33
	ret i32 %div


}

define i32 @testsize3(i32 %x) minsize nounwind {
entry:
	%div = udiv i32 %x, 32
	ret i32 %div


}

define i32 @testsize4(i32 %x) minsize nounwind {
entry:
	%div = udiv i32 %x, 33
	ret i32 %div


}
