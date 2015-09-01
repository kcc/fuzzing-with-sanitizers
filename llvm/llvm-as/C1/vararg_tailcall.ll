


@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00"
@sel = external global i8*
@sel3 = external global i8*
@sel4 = external global i8*
@sel5 = external global i8*
@sel6 = external global i8*
@sel7 = external global i8*





define void @foo(i64 %arg) nounwind optsize ssp noredzone {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %arg) nounwind optsize noredzone
  ret void
}

declare i32 @printf(i8*, ...) optsize noredzone





define void @bar(i64 %arg) nounwind optsize ssp noredzone {
entry:
  tail call void @bar2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %arg) nounwind optsize noredzone
  ret void
}

declare void @bar2(i8*, i64) optsize noredzone





define i8* @foo2(i8* %arg) nounwind optsize ssp noredzone {
entry:
  %tmp1 = load i8*, i8** @sel, align 8
  %call = tail call i8* (i8*, i8*, ...) @x2(i8* %arg, i8* %tmp1) nounwind optsize noredzone
  ret i8* %call
}

declare i8* @x2(i8*, i8*, ...) optsize noredzone





define i8* @foo6(i8* %arg1, i8* %arg2) nounwind optsize ssp noredzone {
entry:
  %tmp2 = load i8*, i8** @sel3, align 8
  %tmp3 = load i8*, i8** @sel4, align 8
  %tmp4 = load i8*, i8** @sel5, align 8
  %tmp5 = load i8*, i8** @sel6, align 8
  %call = tail call i8* (i8*, i8*, i8*, ...) @x3(i8* %arg1, i8* %arg2, i8* %tmp2, i8* %tmp3, i8* %tmp4, i8* %tmp5) nounwind optsize noredzone
  ret i8* %call
}

declare i8* @x3(i8*, i8*, i8*, ...) optsize noredzone





define i8* @foo7(i8* %arg1, i8* %arg2) nounwind optsize ssp noredzone {
entry:
  %tmp2 = load i8*, i8** @sel3, align 8
  %tmp3 = load i8*, i8** @sel4, align 8
  %tmp4 = load i8*, i8** @sel5, align 8
  %tmp5 = load i8*, i8** @sel6, align 8
  %tmp6 = load i8*, i8** @sel7, align 8
  %call = tail call i8* (i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @x7(i8* %arg1, i8* %arg2, i8* %tmp2, i8* %tmp3, i8* %tmp4, i8* %tmp5, i8* %tmp6) nounwind optsize noredzone
  ret i8* %call
}

declare i8* @x7(i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) optsize noredzone





define i8* @foo8(i8* %arg1, i8* %arg2) nounwind optsize ssp noredzone {
entry:
  %tmp2 = load i8*, i8** @sel3, align 8
  %tmp3 = load i8*, i8** @sel4, align 8
  %tmp4 = load i8*, i8** @sel5, align 8
  %tmp5 = load i8*, i8** @sel6, align 8
  %call = tail call i8* (i8*, i8*, i8*, ...) @x3(i8* %arg1, i8* %arg2, i8* %tmp2, i8* %tmp3, i8* %tmp4, i8* %tmp5, i32 48879, i32 48879) nounwind optsize noredzone
  ret i8* %call
}
