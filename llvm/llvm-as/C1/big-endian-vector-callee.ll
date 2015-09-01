



define i64 @test_i64_f64(double %p) {



    %1 = fadd double %p, %p
    %2 = bitcast double %1 to i64
    %3 = add i64 %2, %2
    ret i64 %3


}


define i64 @test_i64_v1i64(<1 x i64> %p) {



    %1 = add <1 x i64> %p, %p
    %2 = bitcast <1 x i64> %1 to i64
    %3 = add i64 %2, %2
    ret i64 %3


}


define i64 @test_i64_v2f32(<2 x float> %p) {



    %1 = fadd <2 x float> %p, %p
    %2 = bitcast <2 x float> %1 to i64
    %3 = add i64 %2, %2
    ret i64 %3


}


define i64 @test_i64_v2i32(<2 x i32> %p) {



    %1 = add <2 x i32> %p, %p
    %2 = bitcast <2 x i32> %1 to i64
    %3 = add i64 %2, %2
    ret i64 %3


}


define i64 @test_i64_v4i16(<4 x i16> %p) {



    %1 = add <4 x i16> %p, %p
    %2 = bitcast <4 x i16> %1 to i64
    %3 = add i64 %2, %2
    ret i64 %3


}


define i64 @test_i64_v8i8(<8 x i8> %p) {



    %1 = add <8 x i8> %p, %p
    %2 = bitcast <8 x i8> %1 to i64
    %3 = add i64 %2, %2
    ret i64 %3


}


define double @test_f64_i64(i64 %p) {


    %1 = add i64 %p, %p
    %2 = bitcast i64 %1 to double
    %3 = fadd double %2, %2
    ret double %3



}


define double @test_f64_v1i64(<1 x i64> %p) {



    %1 = add <1 x i64> %p, %p
    %2 = bitcast <1 x i64> %1 to double
    %3 = fadd double %2, %2
    ret double %3



}


define double @test_f64_v2f32(<2 x float> %p) {



    %1 = fadd <2 x float> %p, %p
    %2 = bitcast <2 x float> %1 to double
    %3 = fadd double %2, %2
    ret double %3



}


define double @test_f64_v2i32(<2 x i32> %p) {



    %1 = add <2 x i32> %p, %p
    %2 = bitcast <2 x i32> %1 to double
    %3 = fadd double %2, %2
    ret double %3



}


define double @test_f64_v4i16(<4 x i16> %p) {



    %1 = add <4 x i16> %p, %p
    %2 = bitcast <4 x i16> %1 to double
    %3 = fadd double %2, %2
    ret double %3



}


define double @test_f64_v8i8(<8 x i8> %p) {



    %1 = add <8 x i8> %p, %p
    %2 = bitcast <8 x i8> %1 to double
    %3 = fadd double %2, %2
    ret double %3



}


define <1 x i64> @test_v1i64_i64(i64 %p) {


    %1 = add i64 %p, %p
    %2 = bitcast i64 %1 to <1 x i64>
    %3 = add <1 x i64> %2, %2
    ret <1 x i64> %3



}


define <1 x i64> @test_v1i64_f64(double %p) {



    %1 = fadd double %p, %p
    %2 = bitcast double %1 to <1 x i64>
    %3 = add <1 x i64> %2, %2
    ret <1 x i64> %3



}


define <1 x i64> @test_v1i64_v2f32(<2 x float> %p) {



    %1 = fadd <2 x float> %p, %p
    %2 = bitcast <2 x float> %1 to <1 x i64>
    %3 = add <1 x i64> %2, %2
    ret <1 x i64> %3



}


define <1 x i64> @test_v1i64_v2i32(<2 x i32> %p) {



    %1 = add <2 x i32> %p, %p
    %2 = bitcast <2 x i32> %1 to <1 x i64>
    %3 = add <1 x i64> %2, %2
    ret <1 x i64> %3



}


define <1 x i64> @test_v1i64_v4i16(<4 x i16> %p) {



    %1 = add <4 x i16> %p, %p
    %2 = bitcast <4 x i16> %1 to <1 x i64>
    %3 = add <1 x i64> %2, %2
    ret <1 x i64> %3



}


define <1 x i64> @test_v1i64_v8i8(<8 x i8> %p) {



    %1 = add <8 x i8> %p, %p
    %2 = bitcast <8 x i8> %1 to <1 x i64>
    %3 = add <1 x i64> %2, %2
    ret <1 x i64> %3



}


define <2 x float> @test_v2f32_i64(i64 %p) {


    %1 = add i64 %p, %p
    %2 = bitcast i64 %1 to <2 x float>
    %3 = fadd <2 x float> %2, %2
    ret <2 x float> %3



}


define <2 x float> @test_v2f32_f64(double %p) {



    %1 = fadd double %p, %p
    %2 = bitcast double %1 to <2 x float>
    %3 = fadd <2 x float> %2, %2
    ret <2 x float> %3



}


define <2 x float> @test_v2f32_v1i64(<1 x i64> %p) {



    %1 = add <1 x i64> %p, %p
    %2 = bitcast <1 x i64> %1 to <2 x float>
    %3 = fadd <2 x float> %2, %2
    ret <2 x float> %3



}


define <2 x float> @test_v2f32_v2i32(<2 x i32> %p) {



    %1 = add <2 x i32> %p, %p
    %2 = bitcast <2 x i32> %1 to <2 x float>
    %3 = fadd <2 x float> %2, %2
    ret <2 x float> %3



}


define <2 x float> @test_v2f32_v4i16(<4 x i16> %p) {



    %1 = add <4 x i16> %p, %p
    %2 = bitcast <4 x i16> %1 to <2 x float>
    %3 = fadd <2 x float> %2, %2
    ret <2 x float> %3



}


define <2 x float> @test_v2f32_v8i8(<8 x i8> %p) {



    %1 = add <8 x i8> %p, %p
    %2 = bitcast <8 x i8> %1 to <2 x float>
    %3 = fadd <2 x float> %2, %2
    ret <2 x float> %3



}


define <2 x i32> @test_v2i32_i64(i64 %p) {


    %1 = add i64 %p, %p
    %2 = bitcast i64 %1 to <2 x i32>
    %3 = add <2 x i32> %2, %2
    ret <2 x i32> %3



}


define <2 x i32> @test_v2i32_f64(double %p) {



    %1 = fadd double %p, %p
    %2 = bitcast double %1 to <2 x i32>
    %3 = add <2 x i32> %2, %2
    ret <2 x i32> %3



}


define <2 x i32> @test_v2i32_v1i64(<1 x i64> %p) {



    %1 = add <1 x i64> %p, %p
    %2 = bitcast <1 x i64> %1 to <2 x i32>
    %3 = add <2 x i32> %2, %2
    ret <2 x i32> %3



}


define <2 x i32> @test_v2i32_v2f32(<2 x float> %p) {



    %1 = fadd <2 x float> %p, %p
    %2 = bitcast <2 x float> %1 to <2 x i32>
    %3 = add <2 x i32> %2, %2
    ret <2 x i32> %3



}


define <2 x i32> @test_v2i32_v4i16(<4 x i16> %p) {



    %1 = add <4 x i16> %p, %p
    %2 = bitcast <4 x i16> %1 to <2 x i32>
    %3 = add <2 x i32> %2, %2
    ret <2 x i32> %3



}


define <2 x i32> @test_v2i32_v8i8(<8 x i8> %p) {



    %1 = add <8 x i8> %p, %p
    %2 = bitcast <8 x i8> %1 to <2 x i32>
    %3 = add <2 x i32> %2, %2
    ret <2 x i32> %3



}


define <4 x i16> @test_v4i16_i64(i64 %p) {


    %1 = add i64 %p, %p
    %2 = bitcast i64 %1 to <4 x i16>
    %3 = add <4 x i16> %2, %2
    ret <4 x i16> %3



}


define <4 x i16> @test_v4i16_f64(double %p) {



    %1 = fadd double %p, %p
    %2 = bitcast double %1 to <4 x i16>
    %3 = add <4 x i16> %2, %2
    ret <4 x i16> %3



}


define <4 x i16> @test_v4i16_v1i64(<1 x i64> %p) {



    %1 = add <1 x i64> %p, %p
    %2 = bitcast <1 x i64> %1 to <4 x i16>
    %3 = add <4 x i16> %2, %2
    ret <4 x i16> %3



}


define <4 x i16> @test_v4i16_v2f32(<2 x float> %p) {



    %1 = fadd <2 x float> %p, %p
    %2 = bitcast <2 x float> %1 to <4 x i16>
    %3 = add <4 x i16> %2, %2
    ret <4 x i16> %3



}


define <4 x i16> @test_v4i16_v2i32(<2 x i32> %p) {



    %1 = add <2 x i32> %p, %p
    %2 = bitcast <2 x i32> %1 to <4 x i16>
    %3 = add <4 x i16> %2, %2
    ret <4 x i16> %3



}


define <4 x i16> @test_v4i16_v8i8(<8 x i8> %p) {



    %1 = add <8 x i8> %p, %p
    %2 = bitcast <8 x i8> %1 to <4 x i16>
    %3 = add <4 x i16> %2, %2
    ret <4 x i16> %3



}


define <8 x i8> @test_v8i8_i64(i64 %p) {


    %1 = add i64 %p, %p
    %2 = bitcast i64 %1 to <8 x i8>
    %3 = add <8 x i8> %2, %2
    ret <8 x i8> %3



}


define <8 x i8> @test_v8i8_f64(double %p) {



    %1 = fadd double %p, %p
    %2 = bitcast double %1 to <8 x i8>
    %3 = add <8 x i8> %2, %2
    ret <8 x i8> %3



}


define <8 x i8> @test_v8i8_v1i64(<1 x i64> %p) {



    %1 = add <1 x i64> %p, %p
    %2 = bitcast <1 x i64> %1 to <8 x i8>
    %3 = add <8 x i8> %2, %2
    ret <8 x i8> %3



}


define <8 x i8> @test_v8i8_v2f32(<2 x float> %p) {



    %1 = fadd <2 x float> %p, %p
    %2 = bitcast <2 x float> %1 to <8 x i8>
    %3 = add <8 x i8> %2, %2
    ret <8 x i8> %3



}


define <8 x i8> @test_v8i8_v2i32(<2 x i32> %p) {



    %1 = add <2 x i32> %p, %p
    %2 = bitcast <2 x i32> %1 to <8 x i8>
    %3 = add <8 x i8> %2, %2
    ret <8 x i8> %3



}


define <8 x i8> @test_v8i8_v4i16(<4 x i16> %p) {



    %1 = add <4 x i16> %p, %p
    %2 = bitcast <4 x i16> %1 to <8 x i8>
    %3 = add <8 x i8> %2, %2
    ret <8 x i8> %3



}


define fp128 @test_f128_v2f64(<2 x double> %p) {






    %1 = fadd <2 x double> %p, %p
    %2 = bitcast <2 x double> %1 to fp128
    %3 = fadd fp128 %2, %2
    ret fp128 %3


}


define fp128 @test_f128_v2i64(<2 x i64> %p) {



    %1 = add <2 x i64> %p, %p
    %2 = bitcast <2 x i64> %1 to fp128
    %3 = fadd fp128 %2, %2
    ret fp128 %3


}


define fp128 @test_f128_v4f32(<4 x float> %p) {

    %1 = fadd <4 x float> %p, %p
    %2 = bitcast <4 x float> %1 to fp128
    %3 = fadd fp128 %2, %2
    ret fp128 %3


}


define fp128 @test_f128_v4i32(<4 x i32> %p) {

    %1 = add <4 x i32> %p, %p
    %2 = bitcast <4 x i32> %1 to fp128
    %3 = fadd fp128 %2, %2
    ret fp128 %3


}


define fp128 @test_f128_v8i16(<8 x i16> %p) {

    %1 = add <8 x i16> %p, %p
    %2 = bitcast <8 x i16> %1 to fp128
    %3 = fadd fp128 %2, %2
    ret fp128 %3


}


define fp128 @test_f128_v16i8(<16 x i8> %p) {

    %1 = add <16 x i8> %p, %p
    %2 = bitcast <16 x i8> %1 to fp128
    %3 = fadd fp128 %2, %2
    ret fp128 %3


}


define <2 x double> @test_v2f64_f128(fp128 %p) {




    %1 = fadd fp128 %p, %p
    %2 = bitcast fp128 %1 to <2 x double>
    %3 = fadd <2 x double> %2, %2
    ret <2 x double> %3






}


define <2 x double> @test_v2f64_v2i64(<2 x i64> %p) {



    %1 = add <2 x i64> %p, %p
    %2 = bitcast <2 x i64> %1 to <2 x double>
    %3 = fadd <2 x double> %2, %2
    ret <2 x double> %3






}


define <2 x double> @test_v2f64_v4f32(<4 x float> %p) {

    %1 = fadd <4 x float> %p, %p
    %2 = bitcast <4 x float> %1 to <2 x double>
    %3 = fadd <2 x double> %2, %2
    ret <2 x double> %3






}


define <2 x double> @test_v2f64_v4i32(<4 x i32> %p) {

    %1 = add <4 x i32> %p, %p
    %2 = bitcast <4 x i32> %1 to <2 x double>
    %3 = fadd <2 x double> %2, %2
    ret <2 x double> %3






}


define <2 x double> @test_v2f64_v8i16(<8 x i16> %p) {

    %1 = add <8 x i16> %p, %p
    %2 = bitcast <8 x i16> %1 to <2 x double>
    %3 = fadd <2 x double> %2, %2
    ret <2 x double> %3






}


define <2 x double> @test_v2f64_v16i8(<16 x i8> %p) {

    %1 = add <16 x i8> %p, %p
    %2 = bitcast <16 x i8> %1 to <2 x double>
    %3 = fadd <2 x double> %2, %2
    ret <2 x double> %3






}


define <2 x i64> @test_v2i64_f128(fp128 %p) {




    %1 = fadd fp128 %p, %p
    %2 = bitcast fp128 %1 to <2 x i64>
    %3 = add <2 x i64> %2, %2
    ret <2 x i64> %3



}


define <2 x i64> @test_v2i64_v2f64(<2 x double> %p) {






    %1 = fadd <2 x double> %p, %p
    %2 = bitcast <2 x double> %1 to <2 x i64>
    %3 = add <2 x i64> %2, %2
    ret <2 x i64> %3



}


define <2 x i64> @test_v2i64_v4f32(<4 x float> %p) {

    %1 = fadd <4 x float> %p, %p
    %2 = bitcast <4 x float> %1 to <2 x i64>
    %3 = add <2 x i64> %2, %2
    ret <2 x i64> %3



}


define <2 x i64> @test_v2i64_v4i32(<4 x i32> %p) {

    %1 = add <4 x i32> %p, %p
    %2 = bitcast <4 x i32> %1 to <2 x i64>
    %3 = add <2 x i64> %2, %2
    ret <2 x i64> %3



}


define <2 x i64> @test_v2i64_v8i16(<8 x i16> %p) {

    %1 = add <8 x i16> %p, %p
    %2 = bitcast <8 x i16> %1 to <2 x i64>
    %3 = add <2 x i64> %2, %2
    ret <2 x i64> %3



}


define <2 x i64> @test_v2i64_v16i8(<16 x i8> %p) {

    %1 = add <16 x i8> %p, %p
    %2 = bitcast <16 x i8> %1 to <2 x i64>
    %3 = add <2 x i64> %2, %2
    ret <2 x i64> %3



}


define <4 x float> @test_v4f32_f128(fp128 %p) {




    %1 = fadd fp128 %p, %p
    %2 = bitcast fp128 %1 to <4 x float>
    %3 = fadd <4 x float> %2, %2
    ret <4 x float> %3



}


define <4 x float> @test_v4f32_v2f64(<2 x double> %p) {






    %1 = fadd <2 x double> %p, %p
    %2 = bitcast <2 x double> %1 to <4 x float>
    %3 = fadd <4 x float> %2, %2
    ret <4 x float> %3



}


define <4 x float> @test_v4f32_v2i64(<2 x i64> %p) {



    %1 = add <2 x i64> %p, %p
    %2 = bitcast <2 x i64> %1 to <4 x float>
    %3 = fadd <4 x float> %2, %2
    ret <4 x float> %3



}


define <4 x float> @test_v4f32_v4i32(<4 x i32> %p) {

    %1 = add <4 x i32> %p, %p
    %2 = bitcast <4 x i32> %1 to <4 x float>
    %3 = fadd <4 x float> %2, %2
    ret <4 x float> %3



}


define <4 x float> @test_v4f32_v8i16(<8 x i16> %p) {

    %1 = add <8 x i16> %p, %p
    %2 = bitcast <8 x i16> %1 to <4 x float>
    %3 = fadd <4 x float> %2, %2
    ret <4 x float> %3



}


define <4 x float> @test_v4f32_v16i8(<16 x i8> %p) {

    %1 = add <16 x i8> %p, %p
    %2 = bitcast <16 x i8> %1 to <4 x float>
    %3 = fadd <4 x float> %2, %2
    ret <4 x float> %3



}


define <4 x i32> @test_v4i32_f128(fp128 %p) {




    %1 = fadd fp128 %p, %p
    %2 = bitcast fp128 %1 to <4 x i32>
    %3 = add <4 x i32> %2, %2
    ret <4 x i32> %3



}


define <4 x i32> @test_v4i32_v2f64(<2 x double> %p) {






    %1 = fadd <2 x double> %p, %p
    %2 = bitcast <2 x double> %1 to <4 x i32>
    %3 = add <4 x i32> %2, %2
    ret <4 x i32> %3



}


define <4 x i32> @test_v4i32_v2i64(<2 x i64> %p) {



    %1 = add <2 x i64> %p, %p
    %2 = bitcast <2 x i64> %1 to <4 x i32>
    %3 = add <4 x i32> %2, %2
    ret <4 x i32> %3



}


define <4 x i32> @test_v4i32_v4f32(<4 x float> %p) {



    %1 = fadd <4 x float> %p, %p
    %2 = bitcast <4 x float> %1 to <4 x i32>
    %3 = add <4 x i32> %2, %2
    ret <4 x i32> %3



}


define <4 x i32> @test_v4i32_v8i16(<8 x i16> %p) {



    %1 = add <8 x i16> %p, %p
    %2 = bitcast <8 x i16> %1 to <4 x i32>
    %3 = add <4 x i32> %2, %2
    ret <4 x i32> %3



}


define <4 x i32> @test_v4i32_v16i8(<16 x i8> %p) {



    %1 = add <16 x i8> %p, %p
    %2 = bitcast <16 x i8> %1 to <4 x i32>
    %3 = add <4 x i32> %2, %2
    ret <4 x i32> %3



}


define <8 x i16> @test_v8i16_f128(fp128 %p) {




    %1 = fadd fp128 %p, %p
    %2 = bitcast fp128 %1 to <8 x i16>
    %3 = add <8 x i16> %2, %2
    ret <8 x i16> %3



}


define <8 x i16> @test_v8i16_v2f64(<2 x double> %p) {






    %1 = fadd <2 x double> %p, %p
    %2 = bitcast <2 x double> %1 to <8 x i16>
    %3 = add <8 x i16> %2, %2
    ret <8 x i16> %3



}


define <8 x i16> @test_v8i16_v2i64(<2 x i64> %p) {



    %1 = add <2 x i64> %p, %p
    %2 = bitcast <2 x i64> %1 to <8 x i16>
    %3 = add <8 x i16> %2, %2
    ret <8 x i16> %3



}


define <8 x i16> @test_v8i16_v4f32(<4 x float> %p) {



    %1 = fadd <4 x float> %p, %p
    %2 = bitcast <4 x float> %1 to <8 x i16>
    %3 = add <8 x i16> %2, %2
    ret <8 x i16> %3



}


define <8 x i16> @test_v8i16_v4i32(<4 x i32> %p) {



    %1 = add <4 x i32> %p, %p
    %2 = bitcast <4 x i32> %1 to <8 x i16>
    %3 = add <8 x i16> %2, %2
    ret <8 x i16> %3



}


define <8 x i16> @test_v8i16_v16i8(<16 x i8> %p) {



    %1 = add <16 x i8> %p, %p
    %2 = bitcast <16 x i8> %1 to <8 x i16>
    %3 = add <8 x i16> %2, %2
    ret <8 x i16> %3



}


define <16 x i8> @test_v16i8_f128(fp128 %p) {




    %1 = fadd fp128 %p, %p
    %2 = bitcast fp128 %1 to <16 x i8>
    %3 = add <16 x i8> %2, %2
    ret <16 x i8> %3



}


define <16 x i8> @test_v16i8_v2f64(<2 x double> %p) {






    %1 = fadd <2 x double> %p, %p
    %2 = bitcast <2 x double> %1 to <16 x i8>
    %3 = add <16 x i8> %2, %2
    ret <16 x i8> %3



}


define <16 x i8> @test_v16i8_v2i64(<2 x i64> %p) {



    %1 = add <2 x i64> %p, %p
    %2 = bitcast <2 x i64> %1 to <16 x i8>
    %3 = add <16 x i8> %2, %2
    ret <16 x i8> %3



}


define <16 x i8> @test_v16i8_v4f32(<4 x float> %p) {



    %1 = fadd <4 x float> %p, %p
    %2 = bitcast <4 x float> %1 to <16 x i8>
    %3 = add <16 x i8> %2, %2
    ret <16 x i8> %3



}


define <16 x i8> @test_v16i8_v4i32(<4 x i32> %p) {



    %1 = add <4 x i32> %p, %p
    %2 = bitcast <4 x i32> %1 to <16 x i8>
    %3 = add <16 x i8> %2, %2
    ret <16 x i8> %3



}


define <16 x i8> @test_v16i8_v8i16(<8 x i16> %p) {



    %1 = add <8 x i16> %p, %p
    %2 = bitcast <8 x i16> %1 to <16 x i8>
    %3 = add <16 x i8> %2, %2
    ret <16 x i8> %3



}
