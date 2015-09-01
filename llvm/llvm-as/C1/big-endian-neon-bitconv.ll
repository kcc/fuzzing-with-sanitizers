


@v2i64 = global <2 x i64> zeroinitializer
@v2i32 = global <2 x i32> zeroinitializer
@v4i32 = global <4 x i32> zeroinitializer
@v4i16 = global <4 x i16> zeroinitializer
@v8i16 = global <8 x i16> zeroinitializer
@v8i8 = global <8 x i8> zeroinitializer
@v16i8 = global <16 x i8> zeroinitializer

@v2f32 = global <2 x float> zeroinitializer
@v2f64 = global <2 x double> zeroinitializer
@v4f32 = global <4 x float> zeroinitializer



define void @conv_i64_to_v8i8( i64 %val,  <8 x i8>* %store ) {


  %v = bitcast i64 %val to <8 x i8>
  %w = load <8 x i8>, <8 x i8>* @v8i8
  %a = add <8 x i8> %v, %w
  store <8 x i8> %a, <8 x i8>* %store
  ret void
}

define void @conv_v8i8_to_i64( <8 x i8>* %load, <8 x i8>* %store ) {


  %v = load <8 x i8>, <8 x i8>* %load
  %w = load <8 x i8>, <8 x i8>* @v8i8
  %a = add <8 x i8> %v, %w
  %f = bitcast <8 x i8> %a to i64
  call void @conv_i64_to_v8i8( i64 %f, <8 x i8>* %store )
  ret void
}

define void @conv_i64_to_v4i16( i64 %val,  <4 x i16>* %store ) {


  %v = bitcast i64 %val to <4 x i16>
  %w = load <4 x i16>, <4 x i16>* @v4i16
  %a = add <4 x i16> %v, %w
  store <4 x i16> %a, <4 x i16>* %store
  ret void
}

define void @conv_v4i16_to_i64( <4 x i16>* %load, <4 x i16>* %store ) {


  %v = load <4 x i16>, <4 x i16>* %load
  %w = load <4 x i16>, <4 x i16>* @v4i16
  %a = add <4 x i16> %v, %w
  %f = bitcast <4 x i16> %a to i64
  call void @conv_i64_to_v4i16( i64 %f, <4 x i16>* %store )
  ret void
}

define void @conv_i64_to_v2i32( i64 %val,  <2 x i32>* %store ) {


  %v = bitcast i64 %val to <2 x i32>
  %w = load <2 x i32>, <2 x i32>* @v2i32
  %a = add <2 x i32> %v, %w
  store <2 x i32> %a, <2 x i32>* %store
  ret void
}

define void @conv_v2i32_to_i64( <2 x i32>* %load, <2 x i32>* %store ) {


  %v = load <2 x i32>, <2 x i32>* %load
  %w = load <2 x i32>, <2 x i32>* @v2i32
  %a = add <2 x i32> %v, %w
  %f = bitcast <2 x i32> %a to i64
  call void @conv_i64_to_v2i32( i64 %f, <2 x i32>* %store )
  ret void
}

define void @conv_i64_to_v2f32( i64 %val,  <2 x float>* %store ) {


  %v = bitcast i64 %val to <2 x float>
  %w = load <2 x float>, <2 x float>* @v2f32
  %a = fadd <2 x float> %v, %w
  store <2 x float> %a, <2 x float>* %store
  ret void
}

define void @conv_v2f32_to_i64( <2 x float>* %load, <2 x float>* %store ) {


  %v = load <2 x float>, <2 x float>* %load
  %w = load <2 x float>, <2 x float>* @v2f32
  %a = fadd <2 x float> %v, %w
  %f = bitcast <2 x float> %a to i64
  call void @conv_i64_to_v2f32( i64 %f, <2 x float>* %store )
  ret void
}

define void @conv_f64_to_v8i8( double %val,  <8 x i8>* %store ) {


  %v = bitcast double %val to <8 x i8>
  %w = load <8 x i8>, <8 x i8>* @v8i8
  %a = add <8 x i8> %v, %w
  store <8 x i8> %a, <8 x i8>* %store
  ret void
}

define void @conv_v8i8_to_f64( <8 x i8>* %load, <8 x i8>* %store ) {


  %v = load <8 x i8>, <8 x i8>* %load
  %w = load <8 x i8>, <8 x i8>* @v8i8
  %a = add <8 x i8> %v, %w
  %f = bitcast <8 x i8> %a to double
  call void @conv_f64_to_v8i8( double %f, <8 x i8>* %store )
  ret void
}

define void @conv_f64_to_v4i16( double %val,  <4 x i16>* %store ) {


  %v = bitcast double %val to <4 x i16>
  %w = load <4 x i16>, <4 x i16>* @v4i16
  %a = add <4 x i16> %v, %w
  store <4 x i16> %a, <4 x i16>* %store
  ret void
}

define void @conv_v4i16_to_f64( <4 x i16>* %load, <4 x i16>* %store ) {


  %v = load <4 x i16>, <4 x i16>* %load
  %w = load <4 x i16>, <4 x i16>* @v4i16
  %a = add <4 x i16> %v, %w
  %f = bitcast <4 x i16> %a to double
  call void @conv_f64_to_v4i16( double %f, <4 x i16>* %store )
  ret void
}

define void @conv_f64_to_v2i32( double %val,  <2 x i32>* %store ) {


  %v = bitcast double %val to <2 x i32>
  %w = load <2 x i32>, <2 x i32>* @v2i32
  %a = add <2 x i32> %v, %w
  store <2 x i32> %a, <2 x i32>* %store
  ret void
}

define void @conv_v2i32_to_f64( <2 x i32>* %load, <2 x i32>* %store ) {


  %v = load <2 x i32>, <2 x i32>* %load
  %w = load <2 x i32>, <2 x i32>* @v2i32
  %a = add <2 x i32> %v, %w
  %f = bitcast <2 x i32> %a to double
  call void @conv_f64_to_v2i32( double %f, <2 x i32>* %store )
  ret void
}

define void @conv_f64_to_v2f32( double %val,  <2 x float>* %store ) {


  %v = bitcast double %val to <2 x float>
  %w = load <2 x float>, <2 x float>* @v2f32
  %a = fadd <2 x float> %v, %w
  store <2 x float> %a, <2 x float>* %store
  ret void
}

define void @conv_v2f32_to_f64( <2 x float>* %load, <2 x float>* %store ) {


  %v = load <2 x float>, <2 x float>* %load
  %w = load <2 x float>, <2 x float>* @v2f32
  %a = fadd <2 x float> %v, %w
  %f = bitcast <2 x float> %a to double
  call void @conv_f64_to_v2f32( double %f, <2 x float>* %store )
  ret void
}




define void @conv_i128_to_v16i8( i128 %val,  <16 x i8>* %store ) {


  %v = bitcast i128 %val to <16 x i8>
  %w = load  <16 x i8>,  <16 x i8>* @v16i8
  %a = add <16 x i8> %v, %w
  store <16 x i8> %a, <16 x i8>* %store
  ret void
}

define void @conv_v16i8_to_i128( <16 x i8>* %load, <16 x i8>* %store ) {


  %v = load <16 x i8>, <16 x i8>* %load
  %w = load <16 x i8>, <16 x i8>* @v16i8
  %a = add <16 x i8> %v, %w
  %f = bitcast <16 x i8> %a to i128
  call void @conv_i128_to_v16i8( i128 %f, <16 x i8>* %store )
  ret void
}

define void @conv_i128_to_v8i16( i128 %val,  <8 x i16>* %store ) {


  %v = bitcast i128 %val to <8 x i16>
  %w = load  <8 x i16>,  <8 x i16>* @v8i16
  %a = add <8 x i16> %v, %w
  store <8 x i16> %a, <8 x i16>* %store
  ret void
}

define void @conv_v8i16_to_i128( <8 x i16>* %load, <8 x i16>* %store ) {


  %v = load <8 x i16>, <8 x i16>* %load
  %w = load <8 x i16>, <8 x i16>* @v8i16
  %a = add <8 x i16> %v, %w
  %f = bitcast <8 x i16> %a to i128
  call void @conv_i128_to_v8i16( i128 %f, <8 x i16>* %store )
  ret void
}

define void @conv_i128_to_v4i32( i128 %val,  <4 x i32>* %store ) {


  %v = bitcast i128 %val to <4 x i32>
  %w = load <4 x i32>, <4 x i32>* @v4i32
  %a = add <4 x i32> %v, %w
  store <4 x i32> %a, <4 x i32>* %store
  ret void
}

define void @conv_v4i32_to_i128( <4 x i32>* %load, <4 x i32>* %store ) {


  %v = load <4 x i32>, <4 x i32>* %load
  %w = load <4 x i32>, <4 x i32>* @v4i32
  %a = add <4 x i32> %v, %w
  %f = bitcast <4 x i32> %a to i128
  call void @conv_i128_to_v4i32( i128 %f, <4 x i32>* %store )
  ret void
}

define void @conv_i128_to_v4f32( i128 %val,  <4 x float>* %store ) {


  %v = bitcast i128 %val to <4 x float>
  %w = load <4 x float>, <4 x float>* @v4f32
  %a = fadd <4 x float> %v, %w
  store <4 x float> %a, <4 x float>* %store
  ret void
}

define void @conv_v4f32_to_i128( <4 x float>* %load, <4 x float>* %store ) {


  %v = load <4 x float>, <4 x float>* %load
  %w = load <4 x float>, <4 x float>* @v4f32
  %a = fadd <4 x float> %v, %w
  %f = bitcast <4 x float> %a to i128
  call void @conv_i128_to_v4f32( i128 %f, <4 x float>* %store )
  ret void
}

define void @conv_f128_to_v2f64( fp128 %val,  <2 x double>* %store ) {


  %v = bitcast fp128 %val to <2 x double>
  %w = load <2 x double>, <2 x double>* @v2f64
  %a = fadd <2 x double> %v, %w
  store <2 x double> %a, <2 x double>* %store
  ret void
}

define void @conv_v2f64_to_f128( <2 x double>* %load, <2 x double>* %store ) {


  %v = load <2 x double>, <2 x double>* %load
  %w = load <2 x double>, <2 x double>* @v2f64
  %a = fadd <2 x double> %v, %w
  %f = bitcast <2 x double> %a to fp128
  call void @conv_f128_to_v2f64( fp128 %f, <2 x double>* %store )
  ret void
}

define void @conv_f128_to_v16i8( fp128 %val,  <16 x i8>* %store ) {


  %v = bitcast fp128 %val to <16 x i8>
  %w = load  <16 x i8>,  <16 x i8>* @v16i8
  %a = add <16 x i8> %v, %w
  store <16 x i8> %a, <16 x i8>* %store
  ret void
}

define void @conv_v16i8_to_f128( <16 x i8>* %load, <16 x i8>* %store ) {


  %v = load <16 x i8>, <16 x i8>* %load
  %w = load <16 x i8>, <16 x i8>* @v16i8
  %a = add <16 x i8> %v, %w
  %f = bitcast <16 x i8> %a to fp128
  call void @conv_f128_to_v16i8( fp128 %f, <16 x i8>* %store )
  ret void
}

define void @conv_f128_to_v8i16( fp128 %val,  <8 x i16>* %store ) {


  %v = bitcast fp128 %val to <8 x i16>
  %w = load  <8 x i16>,  <8 x i16>* @v8i16
  %a = add <8 x i16> %v, %w
  store <8 x i16> %a, <8 x i16>* %store
  ret void
}

define void @conv_v8i16_to_f128( <8 x i16>* %load, <8 x i16>* %store ) {


  %v = load <8 x i16>, <8 x i16>* %load
  %w = load <8 x i16>, <8 x i16>* @v8i16
  %a = add <8 x i16> %v, %w
  %f = bitcast <8 x i16> %a to fp128
  call void @conv_f128_to_v8i16( fp128 %f, <8 x i16>* %store )
  ret void
}

define void @conv_f128_to_v4f32( fp128 %val,  <4 x float>* %store ) {


  %v = bitcast fp128 %val to <4 x float>
  %w = load <4 x float>, <4 x float>* @v4f32
  %a = fadd <4 x float> %v, %w
  store <4 x float> %a, <4 x float>* %store
  ret void
}

define void @conv_v4f32_to_f128( <4 x float>* %load, <4 x float>* %store ) {


  %v = load <4 x float>, <4 x float>* %load
  %w = load <4 x float>, <4 x float>* @v4f32
  %a = fadd <4 x float> %v, %w
  %f = bitcast <4 x float> %a to fp128
  call void @conv_f128_to_v4f32( fp128 %f, <4 x float>* %store )
  ret void
}

define void @arg_v4i32( <4 x i32> %var, <4 x i32>* %store ) {







  store <4 x i32> %var, <4 x i32>* %store
  ret void
}

define void @arg_v8i16( <8 x i16> %var, <8 x i16>* %store ) {







  store <8 x i16> %var, <8 x i16>* %store
  ret void
}

define void @arg_v16i8( <16 x i8> %var, <16 x i8>* %store ) {







  store <16 x i8> %var, <16 x i8>* %store
  ret void
}

