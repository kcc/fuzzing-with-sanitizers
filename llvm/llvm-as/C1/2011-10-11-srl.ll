

target triple = "x86_64-unknown-linux-gnu"

define void @m387(<2 x i8>* %p, <2 x i16>* %q) {
  %t = load <2 x i8>, <2 x i8>* %p
  %r = sext <2 x i8> %t to <2 x i16>
  store <2 x i16> %r, <2 x i16>* %q
  ret void
}

