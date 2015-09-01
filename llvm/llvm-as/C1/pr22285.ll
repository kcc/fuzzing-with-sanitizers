

$f1 = comdat any


define void @f2() {
  call void @f1()
  ret void
}


define linkonce_odr void @f1() comdat {
  ret void
}

