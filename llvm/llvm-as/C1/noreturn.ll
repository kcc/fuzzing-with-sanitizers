

target triple = "thumbv7s-apple-ios"

define i32 @test1() {


entry:
  tail call void @overflow() #0
  unreachable
}


declare void @overflow() #0

define i32 @test2(i32 %x, i32 %y) {



entry:
  %conv = sext i32 %x to i64
  %conv1 = sext i32 %y to i64
  %mul = mul nsw i64 %conv1, %conv
  %conv2 = trunc i64 %mul to i32
  %conv3 = sext i32 %conv2 to i64
  %cmp = icmp eq i64 %mul, %conv3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          
  tail call void @overflow() #0
  unreachable

if.end:                                           
  ret i32 %conv2
}


define i32 @test3() {


entry:
  tail call void @overflow_with_unwind() #1
  unreachable
}


define i32 @test4() uwtable {


entry:
  tail call void @overflow() #0
  unreachable
}

define i32 @test5() uwtable {


entry:
  tail call void @overflow_with_unwind() #1
  unreachable
}


declare void @overflow_with_unwind() #1

attributes #0 = { noreturn nounwind }
attributes #1 = { noreturn }
