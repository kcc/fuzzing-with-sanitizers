





@dummy = internal global i32 666
@array00 = internal global [80 x i8] zeroinitializer, align 1
@sum = internal global i32 55
@STRIDE = internal global i32 8

















define i32 @main(i32 %argc) nounwind {
  %1 = load i32, i32* @sum, align 4
  %2 = getelementptr [80 x i8], [80 x i8]* @array00, i32 0, i32 %argc
  %3 = load i8, i8* %2
  %4 = zext i8 %3 to i32
  %5 = add i32 %1, %4
  ret i32 %5
}
