

define <8 x i16> @udiv_vec8x16(<8 x i16> %var) {
entry:

%0 = udiv <8 x i16> %var, <i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32>
ret <8 x i16> %0
}

define <4 x i32> @udiv_vec4x32(<4 x i32> %var) {
entry:

%0 = udiv <4 x i32> %var, <i32 16, i32 16, i32 16, i32 16>
ret <4 x i32> %0
}
