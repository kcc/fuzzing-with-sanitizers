













@.str_1 = internal constant [6 x i8] c"true\0A\00"              
@.str_2 = internal constant [7 x i8] c"false\0A\00"             

declare i32 @printf(i8*, ...)

define internal void @__main() {
entry:
        ret void
}

define internal void @CheckOutside(i32 %x.1, i32 %y.1) {
entry:
        %tmp.2 = mul i32 %x.1, %x.1             
        %tmp.5 = mul i32 %y.1, %y.1             
        %tmp.6 = add i32 %tmp.2, %tmp.5         
        %tmp.8 = icmp sle i32 %tmp.6, 4194304           
        br i1 %tmp.8, label %then, label %else

then:           
        %tmp.11 = call i32 (i8*, ...) @printf( i8* getelementptr ([6 x i8], [6 x i8]* @.str_1, i64 0, i64 0) )           
        br label %UnifiedExitNode

else:           
        %tmp.13 = call i32 (i8*, ...) @printf( i8* getelementptr ([7 x i8], [7 x i8]* @.str_2, i64 0, i64 0) )           
        br label %UnifiedExitNode

UnifiedExitNode:                
        ret void
}

define i32 @main() {
entry:
        call void @__main( )
        call void @CheckOutside( i32 2097152, i32 2097152 )
        ret i32 0
}

