

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-unknown-unknown"











define float @testadd(float* %input, i32 %offset, i32 %numIterations) {







entry:
  br label %loop

loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]
  %sum = phi float [ %nextsum, %loop ], [ 0.000000e+00, %entry ]
  %index32 = add nuw nsw i32 %i, %offset
  %index64 = sext i32 %index32 to i64
  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %addend = load float, float* %ptr, align 4
  %nextsum = fadd float %sum, %addend
  %nexti = add nuw nsw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret float %nextsum
}






define float @testsub(float* %input, i32 %offset, i32 %numIterations) {








entry:
  br label %loop

loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]
  %sum = phi float [ %nextsum, %loop ], [ 0.000000e+00, %entry ]
  %index32 = sub nuw nsw i32 %i, %offset
  %index64 = sext i32 %index32 to i64
  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %addend = load float, float* %ptr, align 4
  %nextsum = fadd float %sum, %addend
  %nexti = add nuw nsw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret float %nextsum
}






define float @testmul(float* %input, i32 %stride, i32 %numIterations) {







entry:
  br label %loop

loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]
  %sum = phi float [ %nextsum, %loop ], [ 0.000000e+00, %entry ]
  %index32 = mul nuw nsw i32 %i, %stride
  %index64 = sext i32 %index32 to i64
  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %addend = load float, float* %ptr, align 4
  %nextsum = fadd float %sum, %addend
  %nexti = add nuw nsw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret float %nextsum
}








define float @testshl(float* %input, i32 %numIterations) {






entry:
  br label %loop

loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]
  %sum = phi float [ %nextsum, %loop ], [ 0.000000e+00, %entry ]
  %index32 = shl nuw nsw i32 %i, 7
  %index32mul = mul nuw nsw i32 %index32, 3
  %index64 = sext i32 %index32mul to i64
  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %addend = load float, float* %ptr, align 4
  %nextsum = fadd float %sum, %addend
  %nexti = add nuw nsw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret float %nextsum
}
