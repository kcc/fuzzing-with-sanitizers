






















%t = type { i8* }
declare %t @f()

define %t @f2() {
 %x = call %t @f2()
 ret %t %x
}

