




%abc = type opaque

declare %abc* @f()

define %abc* @g() {
  %x = call %abc* @f()
  ret %abc* %x
}
