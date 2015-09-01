


define i32 @div32(i32 %a, i32 %b) {
entry:






  %div = sdiv i32 %a, %b
  ret i32 %div
}

define i64 @div64(i64 %a, i64 %b) {
entry:






  %div = sdiv i64 %a, %b
  ret i64 %div
}



define i32 @div32_optsize(i32 %a, i32 %b) optsize {


  %div = sdiv i32 %a, %b
  ret i32 %div
}

define i32 @div32_minsize(i32 %a, i32 %b) minsize {


  %div = sdiv i32 %a, %b
  ret i32 %div
}

