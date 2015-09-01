















@yy_ec = internal constant [6 x i8] c"\06\07\01\08\01\09"               
@.str_3 = internal constant [8 x i8] c"[%d] = \00"              
@.str_4 = internal constant [4 x i8] c"%d\0A\00"                

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
        br label %loopentry

loopentry:              
        %i = phi i64 [ 0, %entry ], [ %inc.i, %loopentry ]              
        %cptr = getelementptr [6 x i8], [6 x i8]* @yy_ec, i64 0, i64 %i           
        %c = load i8, i8* %cptr             
        %ignore = call i32 (i8*, ...) @printf( i8* getelementptr ([8 x i8], [8 x i8]* @.str_3, i64 0, i64 0), i64 %i )        
        %ignore2 = call i32 (i8*, ...) @printf( i8* getelementptr ([4 x i8], [4 x i8]* @.str_4, i64 0, i64 0), i8 %c )        
        %inc.i = add i64 %i, 1          
        %done = icmp sle i64 %inc.i, 5          
        br i1 %done, label %loopentry, label %exit.1

exit.1:         
        ret i32 0
}

