



target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"


define void @ifThen() {



  br i1 true, label %a, label %b

a:
  %x = add i32 2, 3

  br label %b

b:

  ret void
}


define void @ifElse() {



  br i1 true, label %b, label %a

a:
  %x = add i32 2, 3

  br label %b

b:

  ret void
}


define void @ifElseThenAsIfThen() {



  br i1 true, label %a, label %b

a:
  %x = add i32 2, 3

  br label %c

b:
  br label %c

c:
  ret void
}


define void @ifElseThenAsIfElse() {



  br i1 true, label %b, label %a

a:
  %x = add i32 2, 3

  br label %c

b:
  br label %c

c:
  ret void
}



define void @ifElseThen() {


  br i1 true, label %a, label %b

a:

  %x = add i32 2, 3

  br label %c

b:

  %y = add i32 2, 3
  br label %c

c:
  ret void
}



define void @doNotHoistPastDef() {

  br i1 true, label %b, label %a



a:

  %def = load i32, i32* null

  %use = add i32 %def, 0
  br label %b

b:
  ret void
}


define void @nothingToSpeculate() {

  br i1 true, label %b, label %a

a:

  %def = load i32, i32* null
  br label %b

b:
  ret void
}


define void @hoistIfNotPastDef() {


  %x = load i32, i32* null



  br i1 true, label %b, label %a

a:
  %y = add i32 %x, 1
  %z = add i32 %y, 1
  br label %b

b:
  ret void
}


define void @costTooHigh() {


  br i1 true, label %b, label %a

a:

  %r1 = add i32 1, 1

  %r2 = add i32 1, 1

  %r3 = add i32 1, 1

  %r4 = add i32 1, 1

  %r5 = add i32 1, 1
  br label %b

b:
  ret void
}


define void @tooMuchLeftBehind() {


  br i1 true, label %b, label %a

a:

  %x = load i32, i32* null

  %r1 = add i32 %x, 1

  %r2 = add i32 %x, 1

  %r3 = add i32 %x, 1
  br label %b

b:
  ret void
}
