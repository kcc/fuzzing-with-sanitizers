


declare arm_aapcs_vfpcc void @take_vec64(<2 x i32>)

define void @test_vec64() {



  call arm_aapcs_vfpcc void @take_vec64(<2 x i32> <i32 0, i32 0>)
  call arm_aapcs_vfpcc void @take_vec64(<2 x i32> <i32 0, i32 0>)













  ret void
}

declare arm_aapcs_vfpcc void @take_vec128(<8 x i16>)

define void @test_vec128() {



  call arm_aapcs_vfpcc void @take_vec128(<8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>)
  call arm_aapcs_vfpcc void @take_vec128(<8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>)













  ret void
}

declare void @take_i32(i32)

define void @test_i32() {



  call arm_aapcs_vfpcc void @take_i32(i32 0)
  call arm_aapcs_vfpcc void @take_i32(i32 0)









  ret void
}
