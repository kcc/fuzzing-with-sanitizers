
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare void @llvm.assume(i1) nounwind


define i64 @test1(i32* nocapture readonly %a, i1 %b) {






  %load1 = load i32, i32* %a, align 4
  %conv = zext i32 %load1 to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 1
  %load2 = load i32, i32* %arrayidx1, align 4
  tail call void @llvm.assume(i1 %b)
  %conv2 = zext i32 %load2 to i64
  %shl = shl nuw i64 %conv2, 32
  %add = or i64 %shl, %conv
  ret i64 %add
}


define i64 @test2(i32* nocapture readonly %a, i1 %b) {






  %load1 = load i32, i32* %a, align 4
  %conv = zext i32 %load1 to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 1
  tail call void @llvm.assume(i1 %b)
  %load2 = load i32, i32* %arrayidx1, align 4
  %conv2 = zext i32 %load2 to i64
  %shl = shl nuw i64 %conv2, 32
  %add = or i64 %shl, %conv
  ret i64 %add
}

