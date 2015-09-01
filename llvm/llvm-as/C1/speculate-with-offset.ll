







define void @yes(i1 %c) nounwind {
entry:
  %a = alloca [4 x i64*], align 8
  %__a.addr = getelementptr [4 x i64*], [4 x i64*]* %a, i64 0, i64 3
  call void @frob(i64** %__a.addr)
  br i1 %c, label %if.then, label %if.end

if.then:                                          
  br label %return

if.end:                                           
  %tmp5 = load i64*, i64** %__a.addr, align 8
  br label %return

return:                                           
  %storemerge = phi i64* [ undef, %if.then ], [ %tmp5, %if.end ]
  ret void
}




define void @no0(i1 %c) nounwind {
entry:
  %a = alloca [4 x i64*], align 8
  %__a.addr = getelementptr [4 x i64*], [4 x i64*]* %a, i64 0, i64 4
  call void @frob(i64** %__a.addr)
  br i1 %c, label %if.then, label %if.end

if.then:                                          
  br label %return

if.end:                                           
  %tmp5 = load i64*, i64** %__a.addr, align 8
  br label %return

return:                                           
  %storemerge = phi i64* [ undef, %if.then ], [ %tmp5, %if.end ]
  ret void
}




define void @no1(i1 %c, i64 %n) nounwind {
entry:
  %a = alloca [4 x i64*], align 8
  %__a.addr = getelementptr [4 x i64*], [4 x i64*]* %a, i64 0, i64 %n
  call void @frob(i64** %__a.addr)
  br i1 %c, label %if.then, label %if.end

if.then:                                          
  br label %return

if.end:                                           
  %tmp5 = load i64*, i64** %__a.addr, align 8
  br label %return

return:                                           
  %storemerge = phi i64* [ undef, %if.then ], [ %tmp5, %if.end ]
  ret void
}




define void @no2(i1 %c, i64 %n) nounwind {
entry:
  %a = alloca [4 x i64*], align 8
  %__a.addr = getelementptr [4 x i64*], [4 x i64*]* %a, i64 1, i64 0
  call void @frob(i64** %__a.addr)
  br i1 %c, label %if.then, label %if.end

if.then:                                          
  br label %return

if.end:                                           
  %tmp5 = load i64*, i64** %__a.addr, align 8
  br label %return

return:                                           
  %storemerge = phi i64* [ undef, %if.then ], [ %tmp5, %if.end ]
  ret void
}

declare void @frob(i64** nocapture %p)
