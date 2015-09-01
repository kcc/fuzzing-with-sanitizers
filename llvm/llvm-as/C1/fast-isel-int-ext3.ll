






define i32 @load_unscaled_zext_i8_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8 addrspace(256)*
  %3 = load i8, i8 addrspace(256)* %2
  %4 = zext i8 %3 to i32
  ret i32 %4
}

define i32 @load_unscaled_zext_i16_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16 addrspace(256)*
  %3 = load i16, i16 addrspace(256)* %2
  %4 = zext i16 %3 to i32
  ret i32 %4
}

define i64 @load_unscaled_zext_i8_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8 addrspace(256)*
  %3 = load i8, i8 addrspace(256)* %2
  %4 = zext i8 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_zext_i16_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16 addrspace(256)*
  %3 = load i16, i16 addrspace(256)* %2
  %4 = zext i16 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_zext_i32_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i32 addrspace(256)*
  %3 = load i32, i32 addrspace(256)* %2
  %4 = zext i32 %3 to i64
  ret i64 %4
}

define i32 @load_unscaled_sext_i8_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8 addrspace(256)*
  %3 = load i8, i8 addrspace(256)* %2
  %4 = sext i8 %3 to i32
  ret i32 %4
}

define i32 @load_unscaled_sext_i16_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16 addrspace(256)*
  %3 = load i16, i16 addrspace(256)* %2
  %4 = sext i16 %3 to i32
  ret i32 %4
}

define i64 @load_unscaled_sext_i8_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8 addrspace(256)*
  %3 = load i8, i8 addrspace(256)* %2
  %4 = sext i8 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_sext_i16_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16 addrspace(256)*
  %3 = load i16, i16 addrspace(256)* %2
  %4 = sext i16 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_sext_i32_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i32 addrspace(256)*
  %3 = load i32, i32 addrspace(256)* %2
  %4 = sext i32 %3 to i64
  ret i64 %4
}

