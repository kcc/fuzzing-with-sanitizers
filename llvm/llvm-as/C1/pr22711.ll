



define void @test(i32* %a) {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  %0 = load i32*,  i32** %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** %a.addr, align 8
  %1 = load i32,  i32* %0, align 4
  switch i32 %1, label %sw.epilog [
    i32 17, label %sw.bb
    i32 13, label %sw.bb1
    i32 11, label %sw.bb2
    i32 7, label %sw.bb3
    i32 5, label %sw.bb4
    i32 3, label %sw.bb5
    i32 2, label %sw.bb6
  ]

sw.bb:                                            
  %2 = load i32*,  i32** %a.addr, align 8
  store i32 2, i32* %2, align 4
  br label %sw.epilog

sw.bb1:                                           
  %3 = load i32*,  i32** %a.addr, align 8
  store i32 3, i32* %3, align 4
  br label %sw.epilog

sw.bb2:                                           
  %4 = load i32*,  i32** %a.addr, align 8
  store i32 5, i32* %4, align 4
  br label %sw.epilog

sw.bb3:                                           
  %5 = load i32*,  i32** %a.addr, align 8
  store i32 7, i32* %5, align 4
  br label %sw.epilog

sw.bb4:                                           
  %6 = load i32*,  i32** %a.addr, align 8
  store i32 11, i32* %6, align 4
  br label %sw.epilog

sw.bb5:                                           
  %7 = load i32*,  i32** %a.addr, align 8
  store i32 13, i32* %7, align 4
  br label %sw.epilog

sw.bb6:                                           
  %8 = load i32*,  i32** %a.addr, align 8
  store i32 17, i32* %8, align 4
  br label %sw.epilog

sw.epilog:                                        
  ret void
}


















