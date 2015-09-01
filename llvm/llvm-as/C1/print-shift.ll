

@a_str = internal constant [8 x i8] c"a = %d\0A\00"             
@b_str = internal constant [8 x i8] c"b = %d\0A\00"             
@a_shl_str = internal constant [14 x i8] c"a << %d = %d\0A\00"          
@A = global i32 2               
@B = global i32 5               

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
        %a = load i32, i32* @A               
        %b = load i32, i32* @B               
        %a_s = getelementptr [8 x i8], [8 x i8]* @a_str, i64 0, i64 0             
        %b_s = getelementptr [8 x i8], [8 x i8]* @b_str, i64 0, i64 0             
        %a_shl_s = getelementptr [14 x i8], [14 x i8]* @a_shl_str, i64 0, i64 0            
        call i32 (i8*, ...) @printf( i8* %a_s, i32 %a )                
        call i32 (i8*, ...) @printf( i8* %b_s, i32 %b )                
        br label %shl_test

shl_test:               
        %s = phi i8 [ 0, %entry ], [ %s_inc, %shl_test ]                
        %shift.upgrd.1 = zext i8 %s to i32              
        %result = shl i32 %a, %shift.upgrd.1            
        call i32 (i8*, ...) @printf( i8* %a_shl_s, i8 %s, i32 %result )                
        %s_inc = add i8 %s, 1           
        %done = icmp eq i8 %s, 32               
        br i1 %done, label %fini, label %shl_test

fini:           
        ret i32 0
}

