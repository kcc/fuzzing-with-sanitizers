


target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-unknown-unknown"























define void @slsr_after_reassociate_geps(float* %arr, i32 %i) {




  %i2 = shl nsw i32 %i, 1
  %i3 = mul nsw i32 %i, 3
  %i4 = shl nsw i32 %i, 2

  %j1 = add nsw i32 %i, 5
  %p1 = getelementptr inbounds float, float* %arr, i32 %j1



  %v1 = load float, float* %p1, align 4

  call void @foo(float %v1)

  %j2 = add nsw i32 %i2, 5
  %p2 = getelementptr inbounds float, float* %arr, i32 %j2


  %v2 = load float, float* %p2, align 4

  call void @foo(float %v2)

  %j3 = add nsw i32 %i3, 5
  %p3 = getelementptr inbounds float, float* %arr, i32 %j3


  %v3 = load float, float* %p3, align 4

  call void @foo(float %v3)

  %j4 = add nsw i32 %i4, 5
  %p4 = getelementptr inbounds float, float* %arr, i32 %j4


  %v4 = load float, float* %p4, align 4

  call void @foo(float %v4)

  ret void
}

declare void @foo(float)
