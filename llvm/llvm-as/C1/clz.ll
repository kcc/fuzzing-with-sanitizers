

declare i32 @llvm.ctlz.i32(i32, i1)

define i32 @test(i32 %x) {


        %tmp.1 = call i32 @llvm.ctlz.i32( i32 %x, i1 true )
        ret i32 %tmp.1
}
