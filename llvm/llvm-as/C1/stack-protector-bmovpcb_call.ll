





target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:32:64-v128:32:128-a0:0:32-n32-S32"
target triple = "armv7s-apple-ios6.0.0"

@main.title = private unnamed_addr constant [15 x i8] c"foo and stuff\0A\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1


define i32 @main() #0 {
entry:
  %title = alloca [15 x i8], align 1
  %0 = getelementptr inbounds [15 x i8], [15 x i8]* %title, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @main.title, i32 0, i32 0), i32 15, i32 1, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %0) #3
  ret i32 0
}


declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1


declare i32 @printf(i8* nocapture readonly, ...) #2

attributes #0 = { nounwind optsize ssp "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
