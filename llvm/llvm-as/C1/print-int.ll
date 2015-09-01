

@.str_1 = internal constant [4 x i8] c"%d\0A\00"                

declare i32 @printf(i8*, ...)

define i32 @main() {
        %f = getelementptr [4 x i8], [4 x i8]* @.str_1, i64 0, i64 0              
        %d = add i32 0, 0               
        %tmp.0 = call i32 (i8*, ...) @printf( i8* %f, i32 %d )         
        ret i32 0
}

