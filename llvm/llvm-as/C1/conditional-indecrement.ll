

define i32 @test1(i32 %a, i32 %b) nounwind readnone {
  %not.cmp = icmp ne i32 %a, 0
  %inc = zext i1 %not.cmp to i32
  %retval.0 = add i32 %inc, %b
  ret i32 %retval.0




}

define i32 @test2(i32 %a, i32 %b) nounwind readnone {
  %cmp = icmp eq i32 %a, 0
  %inc = zext i1 %cmp to i32
  %retval.0 = add i32 %inc, %b
  ret i32 %retval.0




}

define i32 @test3(i32 %a, i32 %b) nounwind readnone {
  %cmp = icmp eq i32 %a, 0
  %inc = zext i1 %cmp to i32
  %retval.0 = add i32 %inc, %b
  ret i32 %retval.0




}

define i32 @test4(i32 %a, i32 %b) nounwind readnone {
  %not.cmp = icmp ne i32 %a, 0
  %inc = zext i1 %not.cmp to i32
  %retval.0 = add i32 %inc, %b
  ret i32 %retval.0




}

define i32 @test5(i32 %a, i32 %b) nounwind readnone {
  %not.cmp = icmp ne i32 %a, 0
  %inc = zext i1 %not.cmp to i32
  %retval.0 = sub i32 %b, %inc
  ret i32 %retval.0




}

define i32 @test6(i32 %a, i32 %b) nounwind readnone {
  %cmp = icmp eq i32 %a, 0
  %inc = zext i1 %cmp to i32
  %retval.0 = sub i32 %b, %inc
  ret i32 %retval.0




}

define i32 @test7(i32 %a, i32 %b) nounwind readnone {
  %cmp = icmp eq i32 %a, 0
  %inc = zext i1 %cmp to i32
  %retval.0 = sub i32 %b, %inc
  ret i32 %retval.0




}

define i32 @test8(i32 %a, i32 %b) nounwind readnone {
  %not.cmp = icmp ne i32 %a, 0
  %inc = zext i1 %not.cmp to i32
  %retval.0 = sub i32 %b, %inc
  ret i32 %retval.0




}
