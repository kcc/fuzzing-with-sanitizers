



define void @test(i8* %p, i8** %addr) {

entry:
  %cmp0 = icmp eq i8* %p, null
  br i1 %cmp0, label %exit, label %loop
loop:



  %p1 = phi i8* [%p, %entry], [%p1, %loop]
  %cmp1 = icmp eq i8* %p1, null
  br i1 %cmp1, label %exit, label %loop
exit:
  ret void
}


define void @test2(i8* %p) {

entry:
  %cmp0 = icmp eq i8* %p, null
  br i1 %cmp0, label %exit, label %loop
loop:
  %p1 = phi i8* [%p, %entry], [%p2, %backedge]
  %cmp1 = icmp eq i8* %p1, null
  br i1 %cmp1, label %exit, label %backedge
backedge:







  %addr = bitcast i8* %p1 to i8**
  %p2 = load i8*, i8** %addr
  %cmp2 = icmp eq i8* %p2, null
  br i1 %cmp2, label %exit, label %loop
exit:
  ret void
}




define void @test_mixed(i8* %p) {

entry:
  %cmp0 = icmp eq i8* %p, null
  br i1 %cmp0, label %exit, label %loop
loop:




  %p1 = phi i8* [%p, %entry], [%p1, %loop]
  %cmp1 = icmp ne i8* %p1, null
  br i1 %cmp1, label %exit, label %loop
exit:
  ret void
}

