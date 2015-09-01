




define void @sdiv64(i64 %a, i64 %b, i64* %retptr) {




  %d = sdiv i64 %a, %b
  store i64 %d, i64* %retptr
  ret void
}

define void @udiv64(i64 %a, i64 %b, i64* %retptr) {




  %d = udiv i64 %a, %b
  store i64 %d, i64* %retptr
  ret void
}

define void @srem64(i64 %a, i64 %b, i64* %retptr) {




  %d = srem i64 %a, %b
  store i64 %d, i64* %retptr
  ret void
}

define void @urem64(i64 %a, i64 %b, i64* %retptr) {




  %d = urem i64 %a, %b
  store i64 %d, i64* %retptr
  ret void
}

define void @sdiv32(i32 %a, i32 %b, i32* %retptr) {



  %d = sdiv i32 %a, %b
  store i32 %d, i32* %retptr
  ret void
}

define void @udiv32(i32 %a, i32 %b, i32* %retptr) {



  %d = udiv i32 %a, %b
  store i32 %d, i32* %retptr
  ret void
}

define void @srem32(i32 %a, i32 %b, i32* %retptr) {



  %d = srem i32 %a, %b
  store i32 %d, i32* %retptr
  ret void
}

define void @urem32(i32 %a, i32 %b, i32* %retptr) {



  %d = urem i32 %a, %b
  store i32 %d, i32* %retptr
  ret void
}
