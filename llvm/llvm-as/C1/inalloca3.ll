


declare void @doit(i64* inalloca %a)

define void @a() {
entry:
  %a = alloca [2 x i32]
  %b = bitcast [2 x i32]* %a to i64*
  call void @doit(i64* inalloca %b)

  ret void
}
