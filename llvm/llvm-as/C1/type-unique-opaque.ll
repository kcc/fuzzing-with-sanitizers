







%u = type opaque
%u2 = type { %u*, i8 }

declare %u2* @f()

define %u* @g() {
  ret %u* null
}
