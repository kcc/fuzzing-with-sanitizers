




define zeroext i16 @select_cmov_i16(i1 zeroext %cond, i16 zeroext %a, i16 zeroext %b) {




  %1 = select i1 %cond, i16 %a, i16 %b
  ret i16 %1
}

define zeroext i16 @select_cmp_cmov_i16(i16 zeroext %a, i16 zeroext %b) {




  %1 = icmp ult i16 %a, %b
  %2 = select i1 %1, i16 %a, i16 %b
  ret i16 %2
}

define i32 @select_cmov_i32(i1 zeroext %cond, i32 %a, i32 %b) {




  %1 = select i1 %cond, i32 %a, i32 %b
  ret i32 %1
}

define i32 @select_cmp_cmov_i32(i32 %a, i32 %b) {




  %1 = icmp ult i32 %a, %b
  %2 = select i1 %1, i32 %a, i32 %b
  ret i32 %2
}

define i64 @select_cmov_i64(i1 zeroext %cond, i64 %a, i64 %b) {




  %1 = select i1 %cond, i64 %a, i64 %b
  ret i64 %1
}

define i64 @select_cmp_cmov_i64(i64 %a, i64 %b) {




  %1 = icmp ult i64 %a, %b
  %2 = select i1 %1, i64 %a, i64 %b
  ret i64 %2
}

