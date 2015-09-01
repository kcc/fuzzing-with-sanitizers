




















































@g = common global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"g = %d\0A\00", align 1

declare void @bar()
declare i32 @printf(i8*, ...)



define i32 @main() {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* @g, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end12, !prof !1

for.body:                                         
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 100
  br i1 %cmp2, label %for.body3, label %for.end9, !prof !2

for.body3:                                        
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 100
  br i1 %cmp5, label %for.body6, label %for.end, !prof !3


for.body6:                                        
  call void @bar()
  br label %for.inc

for.inc:                                          
  %3 = load i32, i32* %k, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          
  br label %for.inc7

for.inc7:                                         
  %4 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %4, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond1

for.end9:                                         
  br label %for.inc10

for.inc10:                                        
  %5 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %5, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end12:                                        
  %6 = load i32, i32* @g, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %6)
  store i32 0, i32* @g, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       
  %7 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %7, 100
  br i1 %cmp14, label %for.body15, label %for.end24, !prof !1

for.body15:                                       
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       
  %8 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %8, 10000
  br i1 %cmp17, label %for.body18, label %for.end21, !prof !4


for.body18:                                       
  call void @bar()
  br label %for.inc19

for.inc19:                                        
  %9 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %9, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond16

for.end21:                                        
  br label %for.inc22

for.inc22:                                        
  %10 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %10, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond13

for.end24:                                        
  %11 = load i32, i32* @g, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %11)
  store i32 0, i32* @g, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       
  %12 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %12, 1000000
  br i1 %cmp27, label %for.body28, label %for.end31, !prof !5


for.body28:                                       
  call void @bar()
  br label %for.inc29

for.inc29:                                        
  %13 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %13, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond26

for.end31:                                        
  %14 = load i32, i32* @g, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %14)
  store i32 0, i32* @g, align 4
  %15 = load i32, i32* %retval
  ret i32 %15
}

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 232635) (llvm/trunk 232636)"}
!1 = !{!"branch_weights", i32 101, i32 2}
!2 = !{!"branch_weights", i32 10001, i32 101}
!3 = !{!"branch_weights", i32 1000001, i32 10001}
!4 = !{!"branch_weights", i32 1000001, i32 101}
!5 = !{!"branch_weights", i32 1000001, i32 2}
