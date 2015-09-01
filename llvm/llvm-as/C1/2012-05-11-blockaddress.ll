




define internal i8* @f() {
  ret i8* blockaddress(@f, %L1)
L1:
  ret i8* null
}

define void @g() {
  
  %p = call i8* @f()
  ret void
}
