






define void @f1(fp128 *%x) {










  store fp128 0xL08000000000000003fff000000000000, fp128 *%x
  ret void
}
