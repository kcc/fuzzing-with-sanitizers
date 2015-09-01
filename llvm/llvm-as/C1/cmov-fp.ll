





define double @test1(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp ugt i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel













}

define double @test2(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp uge i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define double @test3(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp ult i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define double @test4(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp ule i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define double @test5(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp sgt i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define double @test6(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp sge i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define double @test7(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp slt i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define double @test8(i32 %a, i32 %b, double %x) nounwind {
  %cmp = icmp sle i32 %a, %b
  %sel = select i1 %cmp, double 99.0, double %x
  ret double %sel












}

define float @test9(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp ugt i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test10(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp uge i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test11(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp ult i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test12(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp ule i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test13(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp sgt i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test14(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp sge i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test15(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp slt i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define float @test16(i32 %a, i32 %b, float %x) nounwind {
  %cmp = icmp sle i32 %a, %b
  %sel = select i1 %cmp, float 99.0, float %x
  ret float %sel












}

define x86_fp80 @test17(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp ugt i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel












}

define x86_fp80 @test18(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp uge i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel












}

define x86_fp80 @test19(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp ult i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel












}

define x86_fp80 @test20(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp ule i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel












}

define x86_fp80 @test21(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp sgt i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel
















}

define x86_fp80 @test22(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp sge i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel















}

define x86_fp80 @test23(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp slt i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel















}

define x86_fp80 @test24(i32 %a, i32 %b, x86_fp80 %x) nounwind {
  %cmp = icmp sle i32 %a, %b
  %sel = select i1 %cmp, x86_fp80 0xK4005C600000000000000, x86_fp80 %x
  ret x86_fp80 %sel















}
