

@var_v2i8 = global <2 x i8> zeroinitializer
@var_v4i8 = global <4 x i8> zeroinitializer

@var_v2i16 = global <2 x i16> zeroinitializer
@var_v4i16 = global <4 x i16> zeroinitializer

@var_v2i32 = global <2 x i32> zeroinitializer
@var_v4i32 = global <4 x i32> zeroinitializer

@var_v2i64 = global <2 x i64> zeroinitializer

define void @test_v2i8tov2i32() {


  %i8val = load <2 x i8>, <2 x i8>* @var_v2i8

  %i32val = sext <2 x i8> %i8val to <2 x i32>
  store <2 x i32> %i32val, <2 x i32>* @var_v2i32




  ret void
}

define void @test_v2i8tov2i64() {


  %i8val = load <2 x i8>, <2 x i8>* @var_v2i8

  %i64val = sext <2 x i8> %i8val to <2 x i64>
  store <2 x i64> %i64val, <2 x i64>* @var_v2i64








  ret void
}

define void @test_v4i8tov4i16() {


  %i8val = load <4 x i8>, <4 x i8>* @var_v4i8

  %i16val = sext <4 x i8> %i8val to <4 x i16>
  store <4 x i16> %i16val, <4 x i16>* @var_v4i16




  ret void

}

define void @test_v4i8tov4i32() {


  %i8val = load <4 x i8>, <4 x i8>* @var_v4i8

  %i16val = sext <4 x i8> %i8val to <4 x i32>
  store <4 x i32> %i16val, <4 x i32>* @var_v4i32




  ret void
}

define void @test_v2i16tov2i32() {


  %i16val = load <2 x i16>, <2 x i16>* @var_v2i16

  %i32val = sext <2 x i16> %i16val to <2 x i32>
  store <2 x i32> %i32val, <2 x i32>* @var_v2i32




  ret void

}

define void @test_v2i16tov2i64() {


  %i16val = load <2 x i16>, <2 x i16>* @var_v2i16

  %i64val = sext <2 x i16> %i16val to <2 x i64>
  store <2 x i64> %i64val, <2 x i64>* @var_v2i64




  ret void
}
