

define i64 @bitcasti64tof64() {





  %a = load double, double* undef
  %b = bitcast double %a to i64
  ret i64 %b
}

