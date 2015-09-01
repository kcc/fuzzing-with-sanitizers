




target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare zeroext i1 @return_i1()



define i32 addrspace(1)* @test(i32 addrspace(1)* %ptr) gc "statepoint-example" {







entry:
  %alloca = alloca i32 addrspace(1)*, align 8
  store i32 addrspace(1)* %ptr, i32 addrspace(1)** %alloca
  call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, i32 addrspace(1)** %alloca)
  %rel = load i32 addrspace(1)*, i32 addrspace(1)** %alloca
  ret i32 addrspace(1)* %rel
}


define i32 addrspace(1)* @test2(i32 addrspace(1)* %ptr) gc "statepoint-example" {







entry:
  %alloca = alloca i32 addrspace(1)*, align 8
  store i32 addrspace(1)* %ptr, i32 addrspace(1)** %alloca
  call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 1, i32 addrspace(1)** %alloca)
  ret i32 addrspace(1)* null
}

declare i32 @llvm.experimental.gc.statepoint.p0f_i1f(i64, i32, i1 ()*, i32, i32, ...)





















































































