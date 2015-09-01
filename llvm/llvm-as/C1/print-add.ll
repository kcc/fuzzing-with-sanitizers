

@.str_1 = internal constant [4 x i8] c"%d\0A\00"                

declare i32 @printf(i8*, ...)

define i32 @main() {
        %f = getelementptr [4 x i8], [4 x i8]* @.str_1, i64 0, i64 0              
        %d = add i32 1, 0               
        call i32 (i8*, ...) @printf( i8* %f, i32 %d )          
        %e = add i32 38, 2              
        call i32 (i8*, ...) @printf( i8* %f, i32 %e )          
        %g = add i32 %d, %d             
        %h = add i32 %e, %g             
        call i32 (i8*, ...) @printf( i8* %f, i32 %h )          
        ret i32 0
}

