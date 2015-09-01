





declare void @foo(i32 addrspace(1)*)

declare i32 addrspace(1)* @llvm.nvvm.ptr.gen.to.global.p1i32.p0i32(i32*)


define void @bar() {
  %t1 = alloca i32


  %t2 = call i32 addrspace(1)* @llvm.nvvm.ptr.gen.to.global.p1i32.p0i32(i32* %t1)
  store i32 10, i32* %t1
  call void @foo(i32 addrspace(1)* %t2)
  ret void
}

