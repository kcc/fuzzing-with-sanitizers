



@gint_ = external global i32
@gLL_ = external global i64





define void @store_int_float_(float %a) {
entry:
  %conv = fptosi float %a to i32
  store i32 %conv, i32* @gint_, align 4
  ret void
}








define void @store_int_double_(double %a) {
entry:
  %conv = fptosi double %a to i32
  store i32 %conv, i32* @gint_, align 4
  ret void
}





define void @store_LL_float_(float %a) {
entry:
  %conv = fptosi float %a to i64
  store i64 %conv, i64* @gLL_, align 8
  ret void
}





define void @store_LL_double_(double %a) {
entry:
  %conv = fptosi double %a to i64
  store i64 %conv, i64* @gLL_, align 8
  ret void
}
