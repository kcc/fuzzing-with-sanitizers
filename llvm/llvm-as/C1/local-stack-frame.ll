












define void @foo(i32 %a) {
  %local = alloca i32, align 4
  store volatile i32 %a, i32* %local
  ret void
}











define void @foo2(i32 %a) {
  %local = alloca i32, align 4
  store i32 %a, i32* %local
  call void @bar(i32* %local)
  ret void
}

declare void @bar(i32* %a)

!nvvm.annotations = !{!0}
!0 = !{void (i32)* @foo2, !"kernel", i32 1}











define void @foo3(i32 %a) {
  %local = alloca [3 x i32], align 4
  %1 = bitcast [3 x i32]* %local to i32*
  %2 = getelementptr inbounds i32, i32* %1, i32 %a
  store i32 %a, i32* %2
  ret void
}















define void @foo4() {
  %A = alloca i32
  %B = alloca i32
  store i32 0, i32* %A
  store i32 0, i32* %B
  call void @bar(i32* %A)
  call void @bar(i32* %B)
  ret void
}
