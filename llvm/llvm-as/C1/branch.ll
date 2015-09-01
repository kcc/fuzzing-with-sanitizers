

define i32 @test(i32 %x) {

entry:


  %cmp = icmp ult i32 %x, 7
  br i1 %cmp, label %merge, label %merge
merge:


  ret i32 %x
}


