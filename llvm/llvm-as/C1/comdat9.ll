

$c = comdat any
@a = alias void ()* @f
define internal void @f() comdat($c) {
  ret void
}





$f2 = comdat largest
define internal void @f2() comdat($f2) {
  ret void
}



