



declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)

define void @copy16bytes(i8* nocapture %a, i8* nocapture readonly %b) {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %a, i8* %b, i64 16, i32 1, i1 false)
  ret void

  
  
  
  
  
  

  
  
  

  
  
  
}
