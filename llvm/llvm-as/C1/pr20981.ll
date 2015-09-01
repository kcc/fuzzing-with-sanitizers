

$c1 = comdat any


@a1 = linkonce_odr alias void ()* @f1


define linkonce_odr void @f1() comdat($c1) {
  ret void
}


define void @g() {
  call void @f1()
  ret void
}
