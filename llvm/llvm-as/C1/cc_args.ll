

define void @test() #0 {
entry:




  call void @f_i16(i16 123)



  call void @f_i32(i32 12345678)



  call void @f_i64(i64 72623859790382856)




  call void @f_i32_i32(i32 1234, i32 5678)





  call void @f_i16_i32_i16(i16 2, i32 3, i16 4)





  call void @f_i16_i64_i16(i16 5, i64 7262385979038285, i16 6)

  ret void
}

@g_i16 = common global i16 0, align 2
@g_i32 = common global i32 0, align 2
@g_i64 = common global i64 0, align 4

define void @f_i16(i16 %a) #0 {


  store volatile i16 %a, i16* @g_i16, align 2
  ret void
}

define void @f_i32(i32 %a) #0 {



  store volatile i32 %a, i32* @g_i32, align 2
  ret void
}

define void @f_i64(i64 %a) #0 {



  store volatile i64 %a, i64* @g_i64, align 2
  ret void
}

define void @f_i32_i32(i32 %a, i32 %b) #0 {


  store volatile i32 %a, i32* @g_i32, align 4

  store volatile i32 %b, i32* @g_i32, align 4
  ret void
}

define void @f_i16_i32_i16(i16 %a, i32 %b, i16 %c) #0 {


  store volatile i16 %a, i16* @g_i16, align 2

  store volatile i32 %b, i32* @g_i32, align 4

  store volatile i16 %c, i16* @g_i16, align 2
  ret void
}

define void @f_i16_i64_i16(i16 %a, i64 %b, i16 %c) #0 {


  store volatile i16 %a, i16* @g_i16, align 2

  store volatile i64 %b, i64* @g_i64, align 8

  store volatile i16 %c, i16* @g_i16, align 2
  ret void
}
