




declare i32 @a() returns_twice

define i32 @inner1() {
entry:
  %call = call i32 @a() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @outer1() {
entry:


  %call = call i32 @inner1()
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @inner2() returns_twice {
entry:
  %call = call i32 @a() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @outer2() {
entry:


  %call = call i32 @inner2() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @inner3() personality i8* null {
entry:
  %invoke = invoke i32 @a() returns_twice
      to label %cont unwind label %lpad

cont:
  %add = add nsw i32 1, %invoke
  ret i32 %add

lpad:
  %lp = landingpad i32 cleanup
  resume i32 %lp
}

define i32 @outer3() {
entry:


  %call = call i32 @inner3()
  %add = add nsw i32 1, %call
  ret i32 %add
}

define i32 @inner4() returns_twice personality i8* null {
entry:
  %invoke = invoke i32 @a() returns_twice
      to label %cont unwind label %lpad

cont:
  %add = add nsw i32 1, %invoke
  ret i32 %add

lpad:
  %lp = landingpad i32 cleanup
  resume i32 %lp
}

define i32 @outer4() {
entry:


  %call = call i32 @inner4() returns_twice
  %add = add nsw i32 1, %call
  ret i32 %add
}
