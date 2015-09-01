



@data = global [8193 x i32] zeroinitializer

define void @ZC(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 0))

  
  
  
  

  ret void
}

define void @ZC_offset_n4(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 -1))

  
  
  
  

  ret void
}

define void @ZC_offset_4(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 1))

  
  
  
  

  ret void
}

define void @ZC_offset_252(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 63))

  
  
  
  

  ret void
}

define void @ZC_offset_256(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 64))

  

  

  

  
  
  

  

  ret void
}

define void @ZC_offset_2044(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 511))

  

  

  

  
  
  

  

  ret void
}

define void @ZC_offset_2048(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 512))

  

  
  

  

  
  
  

  

  ret void
}

define void @ZC_offset_32764(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 8191))

  

  
  

  

  
  
  

  

  ret void
}

define void @ZC_offset_32768(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*^ZC,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 8192))

  
  

  
  
  

  
  
  

  ret void
}
