













define void @test(i8* %l) nounwind {
entry:
  %l.addr = alloca i8*, align 8                   
  store i8* %l, i8** %l.addr
  %tmp = load i8*, i8** %l.addr                        
  %tmp1 = load i8, i8* %tmp                           
  %conv = sext i8 %tmp1 to i32                    
  switch i32 %conv, label %sw.default [
    i32 62, label %sw.bb
    i32 60, label %sw.bb
    i32 38, label %sw.bb2
    i32 94, label %sw.bb2
    i32 61, label %sw.bb2
    i32 33, label %sw.bb4
  ]

sw.bb:                                            
  call void @foo(i32 0)
  br label %sw.epilog

sw.bb2:                                           
  call void @foo(i32 1)
  br label %sw.epilog

sw.bb4:                                           
  call void @foo(i32 3)
  br label %sw.epilog

sw.default:                                       
  call void @foo(i32 97)
  br label %sw.epilog

sw.epilog:                                        
  ret void
}

declare void @foo(i32)



define void @test2(i32 %x) nounwind ssp {








entry:
  switch i32 %x, label %if.end [
    i32 6, label %if.then
    i32 4, label %if.then
    i32 3, label %if.then
    i32 1, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          
  tail call void @bar() nounwind
  ret void

if.end:                                           
  ret void
}

declare void @bar()

define void @test3(i32 %x) nounwind {





  switch i32 %x, label %if.end [
    i32 0, label %if.then
    i32 1, label %if.then
    i32 2, label %if.then
    i32 3, label %if.then
    i32 5, label %if.then
  ]
if.then:
  tail call void @bar() nounwind
  ret void
if.end:
  ret void
}



define void @test4(i32 %x, i32* %y) {


entry:
  switch i32 %x, label %sw.default [
    i32 10, label %sw.bb
    i32 20, label %sw.bb1
    i32 30, label %sw.bb2
    i32 40, label %sw.bb3
    i32 50, label %sw.bb4
    i32 60, label %sw.bb5
  ]
sw.bb:
  store i32 1, i32* %y
  br label %sw.epilog
sw.bb1:
  store i32 2, i32* %y
  br label %sw.epilog
sw.bb2:
  store i32 3, i32* %y
  br label %sw.epilog
sw.bb3:
  store i32 4, i32* %y
  br label %sw.epilog
sw.bb4:
  store i32 5, i32* %y
  br label %sw.epilog
sw.bb5:
  store i32 6, i32* %y
  br label %sw.epilog
sw.default:
  store i32 7, i32* %y
  br label %sw.epilog
sw.epilog:
  ret void

















}
