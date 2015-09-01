



target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

define void @foo(i32 %x, float* %output) {



  %1 = icmp eq i32 %x, 1
  br i1 %1, label %then, label %else

then:
  br label %merge

else:
  br label %merge

merge:
  store float 2.0, float* %output
  ret void
}


define ptx_kernel void @hoge() #0 {

bb:
  br i1 undef, label %bb1, label %bb4

bb1:                                              
  %tmp = phi i64 [ %tmp2, %bb1 ], [ undef, %bb ]
  %tmp2 = add nsw i64 %tmp, 1
  %tmp3 = icmp sle i64 %tmp, 0
  br i1 %tmp3, label %bb1, label %bb4

bb4:                                              
  br label %bb4
}
