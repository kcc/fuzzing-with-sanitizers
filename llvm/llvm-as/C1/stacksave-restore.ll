

declare i8* @llvm.stacksave()

declare void @llvm.stackrestore(i8*)

define i32* @test(i32 %N) {
        %tmp = call i8* @llvm.stacksave( )              
        %P = alloca i32, i32 %N         
        call void @llvm.stackrestore( i8* %tmp )
        %Q = alloca i32, i32 %N         
        ret i32* %P
}

