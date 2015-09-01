

 
 attributes #0 = { nounwind }
 



define <16 x i8> @trunc_16x32_to_16x8(<16 x i32> %i) #0 {
  %x = trunc <16 x i32> %i to <16 x i8>
  ret <16 x i8> %x
}




define <8 x i16> @trunc_8x64_to_8x16(<8 x i64> %i) #0 {
  %x = trunc <8 x i64> %i to <8 x i16>
  ret <8 x i16> %x
}




define <16 x i16> @trunc_v16i32_to_v16i16(<16 x i32> %x) #0 {
  %1 = trunc <16 x i32> %x to <16 x i16>
  ret <16 x i16> %1
}

define <8 x i8> @trunc_qb_512(<8 x i64> %i) #0 {




  %x = trunc <8 x i64> %i to <8 x i8>
  ret <8 x i8> %x
}

define void @trunc_qb_512_mem(<8 x i64> %i, <8 x i8>* %res) #0 {




    %x = trunc <8 x i64> %i to <8 x i8>
    store <8 x i8> %x, <8 x i8>* %res
    ret void
}

define <4 x i8> @trunc_qb_256(<4 x i64> %i) #0 {




  %x = trunc <4 x i64> %i to <4 x i8>
  ret <4 x i8> %x
}

define void @trunc_qb_256_mem(<4 x i64> %i, <4 x i8>* %res) #0 {




    %x = trunc <4 x i64> %i to <4 x i8>
    store <4 x i8> %x, <4 x i8>* %res
    ret void
}

define <2 x i8> @trunc_qb_128(<2 x i64> %i) #0 {



  %x = trunc <2 x i64> %i to <2 x i8>
  ret <2 x i8> %x
}

define void @trunc_qb_128_mem(<2 x i64> %i, <2 x i8>* %res) #0 {




    %x = trunc <2 x i64> %i to <2 x i8>
    store <2 x i8> %x, <2 x i8>* %res
    ret void
}

define <8 x i16> @trunc_qw_512(<8 x i64> %i) #0 {




  %x = trunc <8 x i64> %i to <8 x i16>
  ret <8 x i16> %x
}

define void @trunc_qw_512_mem(<8 x i64> %i, <8 x i16>* %res) #0 {




    %x = trunc <8 x i64> %i to <8 x i16>
    store <8 x i16> %x, <8 x i16>* %res
    ret void
}

define <4 x i16> @trunc_qw_256(<4 x i64> %i) #0 {




  %x = trunc <4 x i64> %i to <4 x i16>
  ret <4 x i16> %x
}

define void @trunc_qw_256_mem(<4 x i64> %i, <4 x i16>* %res) #0 {




    %x = trunc <4 x i64> %i to <4 x i16>
    store <4 x i16> %x, <4 x i16>* %res
    ret void
}

define <2 x i16> @trunc_qw_128(<2 x i64> %i) #0 {



  %x = trunc <2 x i64> %i to <2 x i16>
  ret <2 x i16> %x
}

define void @trunc_qw_128_mem(<2 x i64> %i, <2 x i16>* %res) #0 {




    %x = trunc <2 x i64> %i to <2 x i16>
    store <2 x i16> %x, <2 x i16>* %res
    ret void
}

define <8 x i32> @trunc_qd_512(<8 x i64> %i) #0 {




  %x = trunc <8 x i64> %i to <8 x i32>
  ret <8 x i32> %x
}

define void @trunc_qd_512_mem(<8 x i64> %i, <8 x i32>* %res) #0 {




    %x = trunc <8 x i64> %i to <8 x i32>
    store <8 x i32> %x, <8 x i32>* %res
    ret void
}

define <4 x i32> @trunc_qd_256(<4 x i64> %i) #0 {




  %x = trunc <4 x i64> %i to <4 x i32>
  ret <4 x i32> %x
}

define void @trunc_qd_256_mem(<4 x i64> %i, <4 x i32>* %res) #0 {




    %x = trunc <4 x i64> %i to <4 x i32>
    store <4 x i32> %x, <4 x i32>* %res
    ret void
}

define <2 x i32> @trunc_qd_128(<2 x i64> %i) #0 {



  %x = trunc <2 x i64> %i to <2 x i32>
  ret <2 x i32> %x
}

define void @trunc_qd_128_mem(<2 x i64> %i, <2 x i32>* %res) #0 {




    %x = trunc <2 x i64> %i to <2 x i32>
    store <2 x i32> %x, <2 x i32>* %res
    ret void
}

define <16 x i8> @trunc_db_512(<16 x i32> %i) #0 {




  %x = trunc <16 x i32> %i to <16 x i8>
  ret <16 x i8> %x
}

define void @trunc_db_512_mem(<16 x i32> %i, <16 x i8>* %res) #0 {




    %x = trunc <16 x i32> %i to <16 x i8>
    store <16 x i8> %x, <16 x i8>* %res
    ret void
}

define <8 x i8> @trunc_db_256(<8 x i32> %i) #0 {




  %x = trunc <8 x i32> %i to <8 x i8>
  ret <8 x i8> %x
}

define void @trunc_db_256_mem(<8 x i32> %i, <8 x i8>* %res) #0 {




    %x = trunc <8 x i32> %i to <8 x i8>
    store <8 x i8> %x, <8 x i8>* %res
    ret void
}

define <4 x i8> @trunc_db_128(<4 x i32> %i) #0 {



  %x = trunc <4 x i32> %i to <4 x i8>
  ret <4 x i8> %x
}

define void @trunc_db_128_mem(<4 x i32> %i, <4 x i8>* %res) #0 {




    %x = trunc <4 x i32> %i to <4 x i8>
    store <4 x i8> %x, <4 x i8>* %res
    ret void
}

define <16 x i16> @trunc_dw_512(<16 x i32> %i) #0 {




  %x = trunc <16 x i32> %i to <16 x i16>
  ret <16 x i16> %x
}

define void @trunc_dw_512_mem(<16 x i32> %i, <16 x i16>* %res) #0 {




    %x = trunc <16 x i32> %i to <16 x i16>
    store <16 x i16> %x, <16 x i16>* %res
    ret void
}

define <8 x i16> @trunc_dw_256(<8 x i32> %i) #0 {




  %x = trunc <8 x i32> %i to <8 x i16>
  ret <8 x i16> %x
}

define void @trunc_dw_256_mem(<8 x i32> %i, <8 x i16>* %res) #0 {




    %x = trunc <8 x i32> %i to <8 x i16>
    store <8 x i16> %x, <8 x i16>* %res
    ret void
}

define <4 x i16> @trunc_dw_128(<4 x i32> %i) #0 {



  %x = trunc <4 x i32> %i to <4 x i16>
  ret <4 x i16> %x
}

define void @trunc_dw_128_mem(<4 x i32> %i, <4 x i16>* %res) #0 {




    %x = trunc <4 x i32> %i to <4 x i16>
    store <4 x i16> %x, <4 x i16>* %res
    ret void
}

define <32 x i8> @trunc_wb_512(<32 x i16> %i) #0 {




  %x = trunc <32 x i16> %i to <32 x i8>
  ret <32 x i8> %x
}

define void @trunc_wb_512_mem(<32 x i16> %i, <32 x i8>* %res) #0 {




    %x = trunc <32 x i16> %i to <32 x i8>
    store <32 x i8> %x, <32 x i8>* %res
    ret void
}

define <16 x i8> @trunc_wb_256(<16 x i16> %i) #0 {




  %x = trunc <16 x i16> %i to <16 x i8>
  ret <16 x i8> %x
}

define void @trunc_wb_256_mem(<16 x i16> %i, <16 x i8>* %res) #0 {




    %x = trunc <16 x i16> %i to <16 x i8>
    store <16 x i8> %x, <16 x i8>* %res
    ret void
}

define <8 x i8> @trunc_wb_128(<8 x i16> %i) #0 {



  %x = trunc <8 x i16> %i to <8 x i8>
  ret <8 x i8> %x
}

define void @trunc_wb_128_mem(<8 x i16> %i, <8 x i8>* %res) #0 {




    %x = trunc <8 x i16> %i to <8 x i8>
    store <8 x i8> %x, <8 x i8>* %res
    ret void
}
