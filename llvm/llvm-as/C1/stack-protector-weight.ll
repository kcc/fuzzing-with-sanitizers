














define i32 @test_branch_weights(i32 %n) #0 {
entry:
  %a = alloca [128 x i32], align 16
  %0 = bitcast [128 x i32]* %a to i8*
  call void @llvm.lifetime.start(i64 512, i8* %0)
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %a, i64 0, i64 0
  call void @foo2(i32* %arraydecay)
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* %a, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  call void @llvm.lifetime.end(i64 512, i8* %0)
  ret i32 %1
}

declare void @llvm.lifetime.start(i64, i8* nocapture)

declare void @foo2(i32*)

declare void @llvm.lifetime.end(i64, i8* nocapture)

attributes #0 = { ssp "stack-protector-buffer-size"="8" }
