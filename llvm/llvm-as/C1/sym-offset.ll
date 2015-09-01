





@string1 = internal global [11 x i8] c"aaaaaaaaaa\00", align 1
@string2 = internal global [10 x i8] c"aaaa\00bbbb\00", align 1

define i32 @foo1(i32 %n) nounwind readonly {
entry:








  %call = tail call i32 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @string1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @string2, i32 0, i32 0), i32 4) nounwind readonly
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly
