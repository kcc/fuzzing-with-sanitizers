

define void @test() #0 {
entry:




  %0 = call i16 @f_i16()
  store volatile i16 %0, i16* @g_i16



  %1 = call i32 @f_i32()
  store volatile i32 %1, i32* @g_i32



  %2 = call i64 @f_i64()
  store volatile i64 %2, i64* @g_i64

  ret void
}

@g_i16 = common global i16 0, align 2
@g_i32 = common global i32 0, align 2
@g_i64 = common global i64 0, align 2

define i16 @f_i16() #0 {



  ret i16 1
}

define i32 @f_i32() #0 {



  ret i32 16909060
}

define i64 @f_i64() #0 {



  ret i64 72623859790382856
}
