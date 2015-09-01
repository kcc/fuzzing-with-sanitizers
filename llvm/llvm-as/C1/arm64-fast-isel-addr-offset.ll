

@sortlist = common global [5001 x i32] zeroinitializer, align 16
@sortlist2 = common global [5001 x i64] zeroinitializer, align 16


define i32 @foo() nounwind {
entry:







  %0 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i32 0, i64 5000), align 4
  ret i32 %0
}

define i64 @foo2() nounwind {
entry:







  %0 = load i64, i64* getelementptr inbounds ([5001 x i64], [5001 x i64]* @sortlist2, i32 0, i64 5000), align 4
  ret i64 %0
}



@pd2 = common global i8* null, align 8

define signext i8 @foo3() nounwind ssp {
entry:




  %0 = load i8*, i8** @pd2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 12345678901234
  %1 = load i8, i8* %arrayidx, align 1
  ret i8 %1
}
