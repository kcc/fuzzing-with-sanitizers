


define i1 @test(i8* %p) {

entry:
  %cnd1 = icmp eq i8* %p, null
  br i1 %cnd1, label %taken, label %untaken

taken:


  %cnd2 = icmp eq i8* %p, null
  ret i1 %cnd2

untaken:


  %cnd3 = icmp eq i8* %p, null
  ret i1 %cnd3
}


define i1 @test_neg1(i8* %p) {

entry:
  %cnd1 = icmp eq i8* %p, null
  br i1 %cnd1, label %taken, label %untaken

taken:
  br label %merge

untaken:
  br label %merge

merge:


  %cnd3 = icmp eq i8* %p, null
  ret i1 %cnd3
}



define i1 @test_neg2(i8* %p) {

entry:
  %cnd1 = icmp eq i8* %p, null
  br i1 %cnd1, label %merge, label %merge

merge:


  %cnd3 = icmp eq i8* %p, null
  ret i1 %cnd3
}


define i1 @test2(i8* %p) {

entry:
  %cnd = icmp eq i8* %p, null
  br i1 %cnd, label %taken, label %untaken

taken:


  ret i1 %cnd

untaken:


  ret i1 %cnd
}


define i1 @test2_neg1(i8* %p) {

entry:
  %cnd1 = icmp eq i8* %p, null
  br i1 %cnd1, label %taken, label %untaken

taken:
  br label %merge

untaken:
  br label %merge

merge:


  ret i1 %cnd1
}


define i1 @test2_neg2(i8* %p) {

entry:
  %cnd1 = icmp eq i8* %p, null
  br i1 %cnd1, label %merge, label %merge

merge:


  ret i1 %cnd1
}

