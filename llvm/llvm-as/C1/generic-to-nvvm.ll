

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx-nvidia-cuda"




@myglobal = internal global i32 42, align 4

@myconst = internal constant i32 42, align 4


define void @foo(i32* %a, i32* %b) {

  %ld1 = load i32, i32* @myglobal

  %ld2 = load i32, i32* @myconst
  store i32 %ld1, i32* %a
  store i32 %ld2, i32* %b
  ret void
}


!nvvm.annotations = !{!0}
!0 = !{void (i32*, i32*)* @foo, !"kernel", i32 1}
