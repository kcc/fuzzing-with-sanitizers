












@.str_1 = internal constant [30 x i8] c"d = %d, ct = %d, d ^ ct = %d\0A\00"

declare i32 @printf(i8*, ...)

define i32 @adj(i32 %d.1, i32 %ct.1) {
entry:
        %tmp.19 = icmp eq i32 %ct.1, 2          
        %tmp.22.not = trunc i32 %ct.1 to i1              
        %tmp.221 = xor i1 %tmp.22.not, true             
        %tmp.26 = or i1 %tmp.19, %tmp.221               
        %tmp.27 = zext i1 %tmp.26 to i32                
        ret i32 %tmp.27
}

define i32 @main() {
entry:
        %result = call i32 @adj( i32 3, i32 2 )         
        %tmp.0 = call i32 (i8*, ...) @printf( i8* getelementptr ([30 x i8], [30 x i8]* @.str_1, i64 0, i64 0), i32 3, i32 2, i32 %result )              
        ret i32 0
}

