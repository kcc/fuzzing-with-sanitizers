




@real_init = weak_odr constant [2 x i8] c"y\00"
@fake_init = weak constant [2 x i8] c"y\00"
@.str = private constant [2 x i8] c"y\00"

define i32 @foo() nounwind {




entry:
  %str1 = getelementptr inbounds [2 x i8], [2 x i8]* @fake_init, i64 0, i64 0
  %str2 = getelementptr inbounds [2 x i8], [2 x i8]* @.str, i64 0, i64 0
  %temp1 = call i32 @strcmp(i8* %str1, i8* %str2) nounwind readonly
  ret i32 %temp1
}

define i32 @bar() nounwind {



entry:
  %str1 = getelementptr inbounds [2 x i8], [2 x i8]* @real_init, i64 0, i64 0
  %str2 = getelementptr inbounds [2 x i8], [2 x i8]* @.str, i64 0, i64 0
  %temp1 = call i32 @strcmp(i8* %str1, i8* %str2) nounwind readonly
  ret i32 %temp1
}

declare i32 @strcmp(i8*, i8*) nounwind readonly
