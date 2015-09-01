




define float @f1() {



  ret float 0.0
}


define double @f2() {



  ret double 0.0
}


define void @f3(fp128 *%x) {





  store fp128 0xL00000000000000000000000000000000, fp128 *%x
  ret void
}
