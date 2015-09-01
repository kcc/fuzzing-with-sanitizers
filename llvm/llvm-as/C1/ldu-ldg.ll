


declare i8 @llvm.nvvm.ldu.global.i.i8.p1i8(i8 addrspace(1)* %ptr, i32 %align)
declare i32 @llvm.nvvm.ldu.global.i.i32.p1i32(i32 addrspace(1)* %ptr, i32 %align)
declare i8 @llvm.nvvm.ldg.global.i.i8.p1i8(i8 addrspace(1)* %ptr, i32 %align)
declare i32 @llvm.nvvm.ldg.global.i.i32.p1i32(i32 addrspace(1)* %ptr, i32 %align)



define i8 @func0(i8 addrspace(1)* %ptr) {

  %val = tail call i8 @llvm.nvvm.ldu.global.i.i8.p1i8(i8 addrspace(1)* %ptr, i32 4)
  ret i8 %val
}


define i32 @func1(i32 addrspace(1)* %ptr) {

  %val = tail call i32 @llvm.nvvm.ldu.global.i.i32.p1i32(i32 addrspace(1)* %ptr, i32 4)
  ret i32 %val
}


define i8 @func2(i8 addrspace(1)* %ptr) {

  %val = tail call i8 @llvm.nvvm.ldg.global.i.i8.p1i8(i8 addrspace(1)* %ptr, i32 4)
  ret i8 %val
}


define i32 @func3(i32 addrspace(1)* %ptr) {

  %val = tail call i32 @llvm.nvvm.ldg.global.i.i32.p1i32(i32 addrspace(1)* %ptr, i32 4)
  ret i32 %val
}
