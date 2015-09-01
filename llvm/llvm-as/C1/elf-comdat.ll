

$f = comdat any
@v = global i32 0, comdat($f)
define void @f() comdat($f) {
  ret void
}




