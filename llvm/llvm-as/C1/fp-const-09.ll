





define void @f1(fp128 *%x) {










  store fp128 0xL00000000000000013fff000000000000, fp128 *%x
  ret void
}
