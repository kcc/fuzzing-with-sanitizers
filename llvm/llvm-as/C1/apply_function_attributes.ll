

%Opaque_type = type opaque
%S2i = type <{ i64, i64 }>
%D2i = type <{ i64, i64 }>
%Di = type <{ i32 }>
%Si = type <{ i32 }>

define void @B(%Opaque_type* sret %a, %S2i* %b, i32* %xp, i32* %yp) {
  %x = load i32, i32* %xp
  %y = load i32, i32* %yp
  %sum = add i32 %x, %y
  %sum2 = add i32 %sum, %y
  %sum3 = add i32 %sum2, %y
  ret void
}

define void @C(%Opaque_type* sret %a, %S2i* %b, i32* %xp, i32* %yp) {
  %x = load i32, i32* %xp
  %y = load i32, i32* %yp
  %sum = add i32 %x, %y
  %sum2 = add i32 %sum, %y
  %sum3 = add i32 %sum2, %y
  ret void
}

define void @A(%Opaque_type* sret %a, %D2i* %b, i32* %xp, i32* %yp) {
  %x = load i32, i32* %xp
  %y = load i32, i32* %yp
  %sum = add i32 %x, %y
  %sum2 = add i32 %sum, %y
  %sum3 = add i32 %sum2, %y
  ret void
}






