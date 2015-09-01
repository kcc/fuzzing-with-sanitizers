




define void @f1(fp128 *%ptr, float %f2) {








  %f1 = load fp128 , fp128 *%ptr
  %f2x = fpext float %f2 to fp128
  %diff = fmul fp128 %f1, %f2x
  store fp128 %diff, fp128 *%ptr
  ret void
}
