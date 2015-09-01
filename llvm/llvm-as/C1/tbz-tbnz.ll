

declare void @t()

define void @test1(i32 %a) {

entry:
  %sub = add nsw i32 %a, -12
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test2(i64 %a) {

entry:
  %sub = add nsw i64 %a, -12
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test3(i32 %a) {

entry:
  %sub = add nsw i32 %a, -12
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test4(i64 %a) {

entry:
  %sub = add nsw i64 %a, -12
  %cmp = icmp sgt i64 %sub, -1
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test5(i32 %a) {

entry:
  %sub = add nsw i32 %a, -12
  %cmp = icmp sge i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test6(i64 %a) {

entry:
  %sub = add nsw i64 %a, -12
  %cmp = icmp sge i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test7(i32 %a) {

entry:
  %sub = sub nsw i32 %a, 12
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test8(i64 %val1, i64 %val2, i64 %val3) {

  %and1 = and i64 %val1, %val2
  %tst1 = icmp slt i64 %and1, 0
  br i1 %tst1, label %if.then1, label %if.end




if.then1:
  %and2 = and i64 %val2, %val3
  %tst2 = icmp sge i64 %and2, 0
  br i1 %tst2, label %if.then2, label %if.end





if.then2:
  %shifted_op1 = shl i64 %val2, 63
  %shifted_and1 = and i64 %val1, %shifted_op1
  %tst3 = icmp slt i64 %shifted_and1, 0
  br i1 %tst3, label %if.then3, label %if.end




if.then3:
  %shifted_op2 = shl i64 %val2, 62
  %shifted_and2 = and i64 %val1, %shifted_op2
  %tst4 = icmp sge i64 %shifted_and2, 0
  br i1 %tst4, label %if.then4, label %if.end




if.then4:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test9(i64 %val1) {

  %tst = icmp slt i64 %val1, 0
  br i1 %tst, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test10(i64 %val1) {

  %tst = icmp slt i64 %val1, 0
  br i1 %tst, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test11(i64 %val1, i64* %ptr) {






  %val = load i64, i64* %ptr
  %tst = icmp slt i64 %val, 0
  br i1 %tst, label %if.then, label %if.end

if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test12(i64 %val1) {

  %tst = icmp slt i64 %val1, 0
  br i1 %tst, label %if.then, label %if.end




if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}

define void @test13(i64 %val1, i64 %val2) {

  %or = or i64 %val1, %val2
  %tst = icmp slt i64 %or, 0
  br i1 %tst, label %if.then, label %if.end





if.then:
  call void @t()
  br label %if.end

if.end:
  ret void
}
