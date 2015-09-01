



define i8* @foo1(i8* %a, i8 %b)  {
  store i8 %b, i8* %a
  %c = getelementptr i8, i8* %a, i32 -1
  ret i8* %c
}



define i16* @foo2(i16* %a, i16 %b)  {
  store i16 %b, i16* %a
  %c = getelementptr i16, i16* %a, i32 -1
  ret i16* %c
}



define i32* @foo3(i32* %a, i32 %b)  {
  store i32 %b, i32* %a
  %c = getelementptr i32, i32* %a, i32 -1
  ret i32* %c
}



define i64* @foo4(i64* %a, i64 %b)  {
  store i64 %b, i64* %a
  %c = getelementptr i64, i64* %a, i32 -1
  ret i64* %c
}



define void @foo5(i32* %a, i1 %b) {
br i1 %b, label %x, label %y
x:
  store i32 -1, i32* %a
  ret void
y:
  ret void
}



define i1 @foo7(i32 %a) {
  %b = icmp eq i32 %a, -1
  ret i1 %b
}



define void @foo8(i8* %a, i8 %b) {
  %c = getelementptr i8, i8* %a, i32 -1
  store i8 %b, i8* %c
  ret void
}



define void @foo9(i16* %a, i16 %b) {
  %c = getelementptr i16, i16* %a, i32 -1
  store i16 %b, i16* %c
  ret void
}



define void @foo10(i32* %a, i32 %b) {
  %c = getelementptr i32, i32* %a, i32 -1
  store i32 %b, i32* %c
  ret void
}



define void @foo11(i64* %a, i64 %b) {
  %c = getelementptr i64, i64* %a, i32 -1
  store i64 %b, i64* %c
  ret void
}



define i32 @foo12(i32 %a, i1 %b) {
br i1 %b, label %x, label %y
x:
  ret i32 -1
y:
  ret i32 %a
}



define i32 @foo13() {
  ret i32 -2
}