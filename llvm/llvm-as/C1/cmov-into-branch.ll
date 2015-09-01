


define i32 @test1(double %a, double* nocapture %b, i32 %x, i32 %y)  {
  %load = load double, double* %b, align 8
  %cmp = fcmp olt double %load, %a
  %cond = select i1 %cmp, i32 %x, i32 %y
  ret i32 %cond





}


define i32 @test2(double %a, double %b, i32 %x, i32 %y)  {
  %cmp = fcmp ogt double %a, %b
  %cond = select i1 %cmp, i32 %x, i32 %y
  ret i32 %cond



}


define i32 @test3(i32 %a, i32* nocapture %b, i32 %x)  {
  %load = load i32, i32* %b, align 4
  %cmp = icmp ult i32 %load, %a
  %cond = select i1 %cmp, i32 %a, i32 %x
  ret i32 %cond





}


define i32 @test4(i32 %a, i32* nocapture %b, i32 %x, i32 %y)  {
  %load = load i32, i32* %b, align 4
  %cmp = icmp ult i32 %load, %a
  %cond = select i1 %cmp, i32 %x, i32 %y
  %add = add i32 %cond, %load
  ret i32 %add



}


define i32 @test5(i32 %a, i32* nocapture %b, i32 %x, i32 %y) {
  %load = load i32, i32* %b, align 4
  %cmp = icmp ult i32 %load, %a
  %cmp1 = icmp ugt i32 %load, %a
  %cond = select i1 %cmp1, i32 %a, i32 %y
  %cond5 = select i1 %cmp, i32 %cond, i32 %x
  ret i32 %cond5




}
