

$c = comdat any


define linkonce_odr void @foo() comdat($c) {
  ret void
}


define linkonce_odr void @bar() comdat($c) {
  ret void
}


define void()* @zed()  {
  ret void()* @foo
}
