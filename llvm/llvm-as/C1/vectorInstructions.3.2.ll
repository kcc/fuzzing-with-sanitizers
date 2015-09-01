






define void @extractelement(<2 x i8> %x1){
entry:

  %res1 = extractelement <2 x i8> %x1, i32 0

  ret void
}

define void @insertelement(<2 x i8> %x1){
entry:

  %res1 = insertelement <2 x i8> %x1, i8 0, i32 0

  ret void
}

define void @shufflevector(<2 x i8> %x1){
entry:

  %res1 = shufflevector <2 x i8> %x1, <2 x i8> %x1, <2 x i32> <i32 0, i32 1>


  %res2 = shufflevector <2 x i8> %x1, <2 x i8> undef, <2 x i32> <i32 0, i32 1>

  ret void
}
