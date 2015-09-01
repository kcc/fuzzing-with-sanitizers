



target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%v4i32 = type <4 x i32>
%v8i16 = type <8 x i16>
%v16i8 = type <16 x i8>

define void @test_v4i32_pos_even(%v4i32* %P, %v4i32* %S) {
       %p = load %v4i32, %v4i32* %P
       %r = add %v4i32 %p, < i32 18, i32 18, i32 18, i32 18 >
       store %v4i32 %r, %v4i32* %S
       ret void
}





define void @test_v4i32_neg_even(%v4i32* %P, %v4i32* %S) {
       %p = load %v4i32, %v4i32* %P
       %r = add %v4i32 %p, < i32 -28, i32 -28, i32 -28, i32 -28 >
       store %v4i32 %r, %v4i32* %S
       ret void
}





define void @test_v8i16_pos_even(%v8i16* %P, %v8i16* %S) {
       %p = load %v8i16, %v8i16* %P
       %r = add %v8i16 %p, < i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30 >
       store %v8i16 %r, %v8i16* %S
       ret void
}





define void @test_v8i16_neg_even(%v8i16* %P, %v8i16* %S) {
       %p = load %v8i16, %v8i16* %P
       %r = add %v8i16 %p, < i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32, i16 -32 >
       store %v8i16 %r, %v8i16* %S
       ret void
}





define void @test_v16i8_pos_even(%v16i8* %P, %v16i8* %S) {
       %p = load %v16i8, %v16i8* %P
       %r = add %v16i8 %p, < i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16 >
       store %v16i8 %r, %v16i8* %S
       ret void
}





define void @test_v16i8_neg_even(%v16i8* %P, %v16i8* %S) {
       %p = load %v16i8, %v16i8* %P
       %r = add %v16i8 %p, < i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18, i8 -18 >
       store %v16i8 %r, %v16i8* %S
       ret void
}





define void @test_v4i32_pos_odd(%v4i32* %P, %v4i32* %S) {
       %p = load %v4i32, %v4i32* %P
       %r = add %v4i32 %p, < i32 27, i32 27, i32 27, i32 27 >
       store %v4i32 %r, %v4i32* %S
       ret void
}






define void @test_v4i32_neg_odd(%v4i32* %P, %v4i32* %S) {
       %p = load %v4i32, %v4i32* %P
       %r = add %v4i32 %p, < i32 -27, i32 -27, i32 -27, i32 -27 >
       store %v4i32 %r, %v4i32* %S
       ret void
}






define void @test_v8i16_pos_odd(%v8i16* %P, %v8i16* %S) {
       %p = load %v8i16, %v8i16* %P
       %r = add %v8i16 %p, < i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31 >
       store %v8i16 %r, %v8i16* %S
       ret void
}






define void @test_v8i16_neg_odd(%v8i16* %P, %v8i16* %S) {
       %p = load %v8i16, %v8i16* %P
       %r = add %v8i16 %p, < i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31, i16 -31 >
       store %v8i16 %r, %v8i16* %S
       ret void
}






define void @test_v16i8_pos_odd(%v16i8* %P, %v16i8* %S) {
       %p = load %v16i8, %v16i8* %P
       %r = add %v16i8 %p, < i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17 >
       store %v16i8 %r, %v16i8* %S
       ret void
}






define void @test_v16i8_neg_odd(%v16i8* %P, %v16i8* %S) {
       %p = load %v16i8, %v16i8* %P
       %r = add %v16i8 %p, < i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17, i8 -17 >
       store %v16i8 %r, %v16i8* %S
       ret void
}






