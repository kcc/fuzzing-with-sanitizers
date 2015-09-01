



$F1 = comdat any
define void @F1(i32 %y) comdat {
bb0:
switch i32 %y, label %bb5 [
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
    i32 4, label %bb4
  ]
bb1:
  ret void
bb2:
  ret void
bb3:
  ret void
bb4:
  ret void
bb5:
  ret void
}
















$G16 = comdat any
@G16 = unnamed_addr constant i32 42, comdat




