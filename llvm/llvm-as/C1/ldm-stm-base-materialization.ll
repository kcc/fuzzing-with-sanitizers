
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-none--eabi"

@a = external global i32*
@b = external global i32*


define void @foo() #0 {
entry:







  %0 = load i32*, i32** @a, align 4
  %arrayidx = getelementptr inbounds i32, i32* %0, i32 1
  %1 = bitcast i32* %arrayidx to i8*
  %2 = load i32*, i32** @b, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i32 1
  %3 = bitcast i32* %arrayidx1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %3, i32 24, i32 4, i1 false)
  ret void
}


declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1
