




target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"









define i32 @ord_f64(double %x, double %y) {
  %a = fcmp ord double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}









define i32 @uno_f64(double %x, double %y) {
  %a = fcmp uno double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}







define i32 @oeq_f64(double %x, double %y) {
  %a = fcmp oeq double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @une_f64(double %x, double %y) {
  %a = fcmp une double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @olt_f64(double %x, double %y) {
  %a = fcmp olt double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @ole_f64(double %x, double %y) {
  %a = fcmp ole double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @ogt_f64(double %x, double %y) {
  %a = fcmp ogt double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @oge_f64(double %x, double %y) {
  %a = fcmp oge double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}













define i32 @ueq_f64(double %x, double %y) {
  %a = fcmp ueq double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @one_f64(double %x, double %y) {
  %a = fcmp one double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @ult_f64(double %x, double %y) {
  %a = fcmp ult double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @ule_f64(double %x, double %y) {
  %a = fcmp ule double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @ugt_f64(double %x, double %y) {
  %a = fcmp ugt double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}



define i32 @uge_f64(double %x, double %y) {
  %a = fcmp uge double %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}
