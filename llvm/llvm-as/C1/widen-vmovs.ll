
target triple = "thumbv7-apple-ios"

















define void @Mm(i32 %in, float* %addr) nounwind {
entry:
  br label %for.body4

for.body4:
  br label %for.body.i

for.body.i:
  %tmp3.i = phi float [ 1.000000e+10, %for.body4 ], [ %add.i, %for.body.i ]
  %add.i = fadd float %tmp3.i, 1.000000e+10
  %exitcond.i = icmp eq i32 %in, 41
  br i1 %exitcond.i, label %rInnerproduct.exit, label %for.body.i

rInnerproduct.exit:
  store float %add.i, float* %addr, align 4
  br label %for.body4
}
