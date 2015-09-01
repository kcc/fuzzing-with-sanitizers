

@data = global [8193 x i32] zeroinitializer

define void @R(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*R,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 0))

  
  
  
  

  ret void
}

define void @R_offset_4(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*R,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 1))

  
  
  
  

  ret void
}

define void @R_offset_254(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*R,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 63))

  
  
  
  

  ret void
}

define void @R_offset_256(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*R,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 64))

  
  
  
  
  

  ret void
}
