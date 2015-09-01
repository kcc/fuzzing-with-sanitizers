





define i64 @f1(i64 %a, i64 %b, fp128 *%ptr, float %f2) {








  %f2x = fpext float %f2 to fp128
  %f1 = load fp128 , fp128 *%ptr
  %cond = fcmp oeq fp128 %f1, %f2x
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}


define i64 @f2(i64 %a, i64 %b, fp128 *%ptr) {







  %f = load fp128 , fp128 *%ptr
  %cond = fcmp oeq fp128 %f, 0xL00000000000000000000000000000000
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}
