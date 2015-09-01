
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define i32* @test1() {
        %X = alloca { i32, i32 }
        %Y = getelementptr {i32,i32}, {i32,i32}* %X, i32 0, i32 1
        ret i32* %Y




}

define i32* @test2() {
        %X = alloca { i32, i32, i32, i32 }
        %Y = getelementptr {i32,i32,i32,i32}, {i32,i32,i32,i32}* %X, i32 0, i32 3
        ret i32* %Y




}

