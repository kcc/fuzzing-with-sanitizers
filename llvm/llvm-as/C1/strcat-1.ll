




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello = constant [6 x i8] c"hello\00"
@null = constant [1 x i8] zeroinitializer
@null_hello = constant [7 x i8] c"\00hello\00"

declare i8* @strcat(i8*, i8*)
declare i32 @puts(i8*)

define i32 @main() {




  %target = alloca [1024 x i8]
  %arg1 = getelementptr [1024 x i8], [1024 x i8]* %target, i32 0, i32 0
  store i8 0, i8* %arg1

  
  %arg2 = getelementptr [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %rslt1 = call i8* @strcat(i8* %arg1, i8* %arg2)

  
  %arg3 = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %rslt2 = call i8* @strcat(i8* %rslt1, i8* %arg3)

  
  %arg4 = getelementptr [7 x i8], [7 x i8]* @null_hello, i32 0, i32 0
  %rslt3 = call i8* @strcat(i8* %rslt2, i8* %arg4)

  call i32 @puts( i8* %rslt3 )
  ret i32 0
}
