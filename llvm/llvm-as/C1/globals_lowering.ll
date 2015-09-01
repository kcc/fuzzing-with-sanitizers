

%MyStruct = type { i32, i32, float }
@Gbl = internal addrspace(3) global [1024 x %MyStruct] zeroinitializer


define void @foo(float %f) {
entry:
  
  %0 = load float, float addrspace(3)* getelementptr inbounds ([1024 x %MyStruct], [1024 x %MyStruct] addrspace(3)* @Gbl, i32 0, i32 0, i32 2)
  %add = fadd float %0, %f
  
  store float %add, float addrspace(3)* getelementptr inbounds ([1024 x %MyStruct], [1024 x %MyStruct] addrspace(3)* @Gbl, i32 0, i32 0, i32 2)
  ret void
}
