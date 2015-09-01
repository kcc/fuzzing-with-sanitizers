






@a = global i16 -21829, align 2
@b = global i32 -1430532899, align 4
@a1 = common global i16 0, align 2
@b1 = common global i32 0, align 4

declare i16 @llvm.bswap.i16(i16)
declare i32 @llvm.bswap.i32(i32)

define void @b16() {
  

  
  

  
  
  
  

  

  %1 = load i16, i16* @a, align 2
  %2 = call i16 @llvm.bswap.i16(i16 %1)
  store i16 %2, i16* @a1, align 2
  ret void
}

define void @b32() {
  

  
  

  
  
  
  
  
  
  
  
  

  
  

  %1 = load i32, i32* @b, align 4
  %2 = call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, i32* @b1, align 4
  ret void
}
