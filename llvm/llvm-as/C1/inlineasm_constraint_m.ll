

@data = global [8193 x i32] zeroinitializer

define void @m(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*m,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 0))

  
  
  
  

  ret void
}

define void @m_offset_4(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*m,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 1))

  
  
  
  

  ret void
}

define void @m_offset_32764(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*m,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 8191))

  
  
  
  

  ret void
}

define void @m_offset_32768(i32 *%p) nounwind {
entry:
  

  call void asm sideeffect "lw $$1, $0", "*m,~{$1}"(i32* getelementptr inbounds ([8193 x i32], [8193 x i32]* @data, i32 0, i32 8192))

  
  
  
  
  
  

  ret void
}
