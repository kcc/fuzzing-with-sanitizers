

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"

declare void @foo(i32)







define void @left_reassociate(i32 %a, i32 %b, i32 %c) {

  %1 = add i32 %a, %c

  call void @foo(i32 %1)
  %2 = add i32 %b, %c
  %3 = add i32 %a, %2

  call void @foo(i32 %3)
  ret void
}







define void @right_reassociate(i32 %a, i32 %b, i32 %c) {

  %1 = add i32 %a, %c

  call void @foo(i32 %1)
  %2 = add i32 %a, %b
  %3 = add i32 %2, %c

  call void @foo(i32 %3)
  ret void
}









define void @no_reassociate(i32 %a, i32 %b, i32 %c) {

  %1 = add i32 %a, %c

  call void @foo(i32 %1)
  %2 = add i32 %a, %b

  call void @foo(i32 %2)
  %3 = add i32 %2, %c

  call void @foo(i32 %3)
  ret void
}









define void @conditional(i1 %p1, i1 %p2, i1 %p3, i32 %a, i32 %b, i32 %c) {

entry:
  br i1 %p1, label %then1, label %branch1

then1:
  %0 = add i32 %a, %c

  call void @foo(i32 %0)
  br label %branch1

branch1:
  br i1 %p2, label %then2, label %branch2

then2:
  %1 = add i32 %a, %c

  call void @foo(i32 %1)
  br label %branch2

branch2:
  br i1 %p3, label %then3, label %return

then3:
  %2 = add i32 %a, %b

  %3 = add i32 %2, %c

  call void @foo(i32 %3)
  br label %return

return:
  ret void
}



















define void @conditional2(i32 %a, i32 %b, i32 %c, i1 %cond1, i1 %cond2, i1 %cond3) {
entry:
  %def1 = add i32 %a, %b
  br i1 %cond1, label %bb1, label %bb6
bb1:
  br i1 %cond2, label %bb2, label %bb3
bb2:
  %def2 = add i32 %a, %b
  call void @foo(i32 %def2)
  ret void
bb3:
  %def3 = add i32 %a, %b
  br i1 %cond3, label %bb4, label %bb5
bb4:
  %def4 = add i32 %a, %b
  call void @foo(i32 %def4)
  ret void
bb5:
  %0 = add i32 %a, %c
  %1 = add i32 %0, %b

  call void @foo(i32 %1) 

  ret void
bb6:
  %2 = add i32 %a, %c
  %3 = add i32 %2, %b

  call void @foo(i32 %3) 

  ret void
}







define void @quaternary(i32 %a, i32 %b, i32 %c, i32 %d) {

  %1 = add i32 %a, %b
  %2 = add i32 %1, %c
  call void @foo(i32 %2)

  %3 = add i32 %a, %d
  %4 = add i32 %3, %b
  %5 = add i32 %4, %c

  call void @foo(i32 %5)

  ret void
}

define void @iterative(i32 %a, i32 %b, i32 %c) {
  %ab = add i32 %a, %b
  %abc = add i32 %ab, %c
  call void @foo(i32 %abc)

  %ab2 = add i32 %ab, %b
  %ab2c = add i32 %ab2, %c

  call void @foo(i32 %ab2c)


  %ab3 = add i32 %ab2, %b
  %ab3c = add i32 %ab3, %c

  call void @foo(i32 %ab3c)


  ret void
}

define void @avoid_infinite_loop(i32 %a, i32 %b) {

  %ab = add i32 %a, %b

  %ab2 = add i32 %ab, %b

  call void @foo(i32 %ab2)

  ret void
}
