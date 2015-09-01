






%struct.B = type { %struct.A* }
%struct.A = type opaque

define i32 @baz(%struct.B* %BB) {
  ret i32 0
}
