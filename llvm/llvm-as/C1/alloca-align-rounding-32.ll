

declare void @bar(<2 x i64>* %n)

define void @foo(i32 %h) {
  %p = alloca <2 x i64>, i32 %h
  call void @bar(<2 x i64>* %p)
  ret void


}

define void @foo2(i32 %h) {
  %p = alloca <2 x i64>, i32 %h, align 32
  call void @bar(<2 x i64>* %p)
  ret void



}
