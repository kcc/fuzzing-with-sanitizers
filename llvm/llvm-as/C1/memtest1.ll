






@str = private unnamed_addr constant [12 x i8] c"hello there\00", align 1
@src = global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str, i32 0, i32 0), align 4
@i = global i32 12, align 4
@dest = common global [50 x i8] zeroinitializer, align 1

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1)
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1)
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1)

define void @cpy(i8* %src, i32 %i) {
  

  
  
  
  
  
  
  
  
  
  
  
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @dest, i32 0, i32 0),
                                       i8* %src, i32 %i, i32 1, i1 false)
  ret void
}

define void @mov(i8* %src, i32 %i) {
  


  
  
  
  
  
  
  
  
  
  
  
  call void @llvm.memmove.p0i8.p0i8.i32(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @dest, i32 0, i32 0),
                                        i8* %src, i32 %i, i32 1, i1 false)
  ret void
}

define void @clear(i32 %i) {
  

  
  
  
  
  
  
  
  
  
  
  
  
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @dest, i32 0, i32 0),
                                  i8 42, i32 %i, i32 1, i1 false)
  ret void
}
