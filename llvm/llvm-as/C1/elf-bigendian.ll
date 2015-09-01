



































target datalayout = "E-p:32:32:32-i1:8:8-i8:8:32-i16:16:32-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-n32"
target triple = "mips-unknown-linux"

@x = global i32 1, align 4
@str = private unnamed_addr constant [4 x i8] c"goo\00"
@str2 = private unnamed_addr constant [4 x i8] c"foo\00"

define i32 @main() nounwind {
entry:
  %0 = load i32, i32* @x, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %foo

if.end:                                           
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str, i32 0, i32 0))
  br label %foo

foo:                                              
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str2, i32 0, i32 0))
  ret i32 0
}

declare i32 @puts(i8* nocapture) nounwind

