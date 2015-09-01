







define void @prom_bug(<4 x i8> %t, i16* %p) {
  %r = bitcast <4 x i8> %t to <2 x i16>
  %o = extractelement <2 x i16> %r, i32 0
  store i16 %o, i16* %p
  ret void
}

