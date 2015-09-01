





define i32 @inner1() alwaysinline {
  ret i32 1
}
define i32 @outer1() {




   %r = call i32 @inner1()
   ret i32 %r
}



define internal i32 @pr2945() nounwind {
  ret i32 0
}

define internal void @inner2(i32 %N) alwaysinline {
  %P = alloca i32, i32 %N
  ret void
}
define void @outer2(i32 %N) {









  call void @inner2( i32 %N )
  ret void
}

declare i32 @a() returns_twice
declare i32 @b() returns_twice

define i32 @inner3() alwaysinline {
entry:
  %call = call i32 @a() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}
define i32 @outer3() {
entry:




  %call = call i32 @inner3()
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @inner4() alwaysinline returns_twice {
entry:
  %call = call i32 @b() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @outer4() {
entry:




  %call = call i32 @inner4() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @inner5(i8* %addr) alwaysinline {
entry:
  indirectbr i8* %addr, [ label %one, label %two ]

one:
  ret i32 42

two:
  ret i32 44
}
define i32 @outer5(i32 %x) {




  %cmp = icmp slt i32 %x, 42
  %addr = select i1 %cmp, i8* blockaddress(@inner5, %one), i8* blockaddress(@inner5, %two)
  %call = call i32 @inner5(i8* %addr)
  ret i32 %call
}

define void @inner6(i32 %x) alwaysinline {
entry:
  %icmp = icmp slt i32 %x, 0
  br i1 %icmp, label %return, label %bb

bb:
  %sub = sub nsw i32 %x, 1
  call void @inner6(i32 %sub)
  ret void

return:
  ret void
}
define void @outer6() {




entry:
  call void @inner6(i32 42)
  ret void
}

define i32 @inner7() {
  ret i32 1
}
define i32 @outer7() {




   %r = call i32 @inner7() alwaysinline
   ret i32 %r
}
