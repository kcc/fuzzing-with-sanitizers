

@.str_1 = internal constant [16 x i8] c"%d %d %d %d %d\0A\00"           
@XA = external global i32               
@XB = external global i32               

declare i32 @printf(i8*, ...)

define void @test(i32 %A, i32 %B, i32 %C, i32 %D) {
entry:
        %t1 = icmp slt i32 %A, 0                
        br i1 %t1, label %less, label %not_less

less:           
        br label %not_less

not_less:               
        %t2 = phi i32 [ sub (i32 ptrtoint (i32* @XA to i32), i32 ptrtoint (i32* @XB to i32)), %less ], [ sub (i32 ptrtoint (i32* @XA to i32), i32 ptrtoint (i32* @XB to i32)), %entry ]               
        %tmp.39 = call i32 (i8*, ...) @printf( i8* getelementptr ([16 x i8], [16 x i8]* @.str_1, i64 0, i64 0), i32 %t2 )      
        ret void
}

