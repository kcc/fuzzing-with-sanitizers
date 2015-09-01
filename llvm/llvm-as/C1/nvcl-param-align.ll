

target triple = "nvptx-unknown-nvcl"


define void @foo(i64 %img, i64 %sampler, <5 x float>* %v) {



  ret void
}

!nvvm.annotations = !{!1, !2, !3}
!1 = !{void (i64, i64, <5 x float>*)* @foo, !"kernel", i32 1}
!2 = !{void (i64, i64, <5 x float>*)* @foo, !"rdoimage", i32 0}
!3 = !{void (i64, i64, <5 x float>*)* @foo, !"sampler", i32 1}
