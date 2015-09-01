





define void @f1(fp128 *%x) {








  store fp128 0xL00000000000000003fff000001000000, fp128 *%x
  ret void
}
