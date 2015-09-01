




@buf = internal global [5 x i8*] zeroinitializer

declare i8* @llvm.frameaddress(i32) nounwind readnone

declare i8* @llvm.stacksave() nounwind

declare i32 @llvm.eh.sjlj.setjmp(i8*) nounwind

declare void @llvm.eh.sjlj.longjmp(i8*) nounwind

define i32 @sj0() nounwind {
  %fp = tail call i8* @llvm.frameaddress(i32 0)
  store i8* %fp, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @buf, i64 0, i64 0), align 16
  %sp = tail call i8* @llvm.stacksave()
  store i8* %sp, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @buf, i64 0, i64 2), align 16
  %r = tail call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([5 x i8*]* @buf to i8*))
  ret i32 %r






















}

define void @lj0() nounwind {
  tail call void @llvm.eh.sjlj.longjmp(i8* bitcast ([5 x i8*]* @buf to i8*))
  unreachable










}
