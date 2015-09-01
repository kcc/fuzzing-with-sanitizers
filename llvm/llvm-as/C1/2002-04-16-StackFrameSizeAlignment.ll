




declare i32 @SIM(i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i32)

define void @foo() {
bb0:
        %V = alloca [256 x i32], i32 256                
        call i32 @SIM( i8* null, i8* null, i32 0, i32 0, i32 0, [256 x i32]* %V, i32 0, i32 0, i32 2 )          
        ret void
}

