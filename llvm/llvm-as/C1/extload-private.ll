




define void @load_i8_sext_private(i32 addrspace(1)* %out) {
entry:
  %tmp0 = alloca i8
  %tmp1 = load i8, i8* %tmp0
  %tmp2 = sext i8 %tmp1 to i32
  store i32 %tmp2, i32 addrspace(1)* %out
  ret void
}



define void @load_i8_zext_private(i32 addrspace(1)* %out) {
entry:
  %tmp0 = alloca i8
  %tmp1 = load i8, i8* %tmp0
  %tmp2 = zext i8 %tmp1 to i32
  store i32 %tmp2, i32 addrspace(1)* %out
  ret void
}



define void @load_i16_sext_private(i32 addrspace(1)* %out) {
entry:
  %tmp0 = alloca i16
  %tmp1 = load i16, i16* %tmp0
  %tmp2 = sext i16 %tmp1 to i32
  store i32 %tmp2, i32 addrspace(1)* %out
  ret void
}



define void @load_i16_zext_private(i32 addrspace(1)* %out) {
entry:
  %tmp0 = alloca i16
  %tmp1 = load i16, i16* %tmp0
  %tmp2 = zext i16 %tmp1 to i32
  store i32 %tmp2, i32 addrspace(1)* %out
  ret void
}
