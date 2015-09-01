






define void @test_zero_v4f32(<4 x float>* %dst) {



  store <4 x float> zeroinitializer, <4 x float>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_zero_v4i32(<4 x i32>* %dst) {



  store <4 x i32> zeroinitializer, <4 x i32>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_zero_v2f64(<2 x double>* %dst) {



  store <2 x double> zeroinitializer, <2 x double>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_zero_v2i64(<2 x i64>* %dst) {



  store <2 x i64> zeroinitializer, <2 x i64>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_zero_v8i16(<8 x i16>* %dst) {



  store <8 x i16> zeroinitializer, <8 x i16>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_zero_v16i8(<16 x i8>* %dst) {



  store <16 x i8> zeroinitializer, <16 x i8>* %dst, align 16, !nontemporal !1
  ret void
}



define void @test_zero_v8f32(<8 x float>* %dst) {


  store <8 x float> zeroinitializer, <8 x float>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_zero_v8i32(<8 x i32>* %dst) {


  store <8 x i32> zeroinitializer, <8 x i32>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_zero_v4f64(<4 x double>* %dst) {


  store <4 x double> zeroinitializer, <4 x double>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_zero_v4i64(<4 x i64>* %dst) {


  store <4 x i64> zeroinitializer, <4 x i64>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_zero_v16i16(<16 x i16>* %dst) {


  store <16 x i16> zeroinitializer, <16 x i16>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_zero_v32i8(<32 x i8>* %dst) {


  store <32 x i8> zeroinitializer, <32 x i8>* %dst, align 32, !nontemporal !1
  ret void
}




define void @test_arg_v4f32(<4 x float> %arg, <4 x float>* %dst) {



  store <4 x float> %arg, <4 x float>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_arg_v4i32(<4 x i32> %arg, <4 x i32>* %dst) {



  store <4 x i32> %arg, <4 x i32>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_arg_v2f64(<2 x double> %arg, <2 x double>* %dst) {



  store <2 x double> %arg, <2 x double>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_arg_v2i64(<2 x i64> %arg, <2 x i64>* %dst) {



  store <2 x i64> %arg, <2 x i64>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_arg_v8i16(<8 x i16> %arg, <8 x i16>* %dst) {



  store <8 x i16> %arg, <8 x i16>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_arg_v16i8(<16 x i8> %arg, <16 x i8>* %dst) {



  store <16 x i8> %arg, <16 x i8>* %dst, align 16, !nontemporal !1
  ret void
}



define void @test_arg_v8f32(<8 x float> %arg, <8 x float>* %dst) {


  store <8 x float> %arg, <8 x float>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_arg_v8i32(<8 x i32> %arg, <8 x i32>* %dst) {


  store <8 x i32> %arg, <8 x i32>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_arg_v4f64(<4 x double> %arg, <4 x double>* %dst) {


  store <4 x double> %arg, <4 x double>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_arg_v4i64(<4 x i64> %arg, <4 x i64>* %dst) {


  store <4 x i64> %arg, <4 x i64>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_arg_v16i16(<16 x i16> %arg, <16 x i16>* %dst) {


  store <16 x i16> %arg, <16 x i16>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_arg_v32i8(<32 x i8> %arg, <32 x i8>* %dst) {


  store <32 x i8> %arg, <32 x i8>* %dst, align 32, !nontemporal !1
  ret void
}





define void @test_op_v4f32(<4 x float> %a, <4 x float> %b, <4 x float>* %dst) {



  %r = fadd <4 x float> %a, %b
  store <4 x float> %r, <4 x float>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_op_v4i32(<4 x i32> %a, <4 x i32> %b, <4 x i32>* %dst) {



  %r = add <4 x i32> %a, %b
  store <4 x i32> %r, <4 x i32>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_op_v2f64(<2 x double> %a, <2 x double> %b, <2 x double>* %dst) {



  %r = fadd <2 x double> %a, %b
  store <2 x double> %r, <2 x double>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_op_v2i64(<2 x i64> %a, <2 x i64> %b, <2 x i64>* %dst) {



  %r = add <2 x i64> %a, %b
  store <2 x i64> %r, <2 x i64>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_op_v8i16(<8 x i16> %a, <8 x i16> %b, <8 x i16>* %dst) {



  %r = add <8 x i16> %a, %b
  store <8 x i16> %r, <8 x i16>* %dst, align 16, !nontemporal !1
  ret void
}

define void @test_op_v16i8(<16 x i8> %a, <16 x i8> %b, <16 x i8>* %dst) {



  %r = add <16 x i8> %a, %b
  store <16 x i8> %r, <16 x i8>* %dst, align 16, !nontemporal !1
  ret void
}



define void @test_op_v8f32(<8 x float> %a, <8 x float> %b, <8 x float>* %dst) {


  %r = fadd <8 x float> %a, %b
  store <8 x float> %r, <8 x float>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_op_v8i32(<8 x i32> %a, <8 x i32> %b, <8 x i32>* %dst) {


  %r = add <8 x i32> %a, %b
  store <8 x i32> %r, <8 x i32>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_op_v4f64(<4 x double> %a, <4 x double> %b, <4 x double>* %dst) {


  %r = fadd <4 x double> %a, %b
  store <4 x double> %r, <4 x double>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_op_v4i64(<4 x i64> %a, <4 x i64> %b, <4 x i64>* %dst) {


  %r = add <4 x i64> %a, %b
  store <4 x i64> %r, <4 x i64>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_op_v16i16(<16 x i16> %a, <16 x i16> %b, <16 x i16>* %dst) {


  %r = add <16 x i16> %a, %b
  store <16 x i16> %r, <16 x i16>* %dst, align 32, !nontemporal !1
  ret void
}

define void @test_op_v32i8(<32 x i8> %a, <32 x i8> %b, <32 x i8>* %dst) {


  %r = add <32 x i8> %a, %b
  store <32 x i8> %r, <32 x i8>* %dst, align 32, !nontemporal !1
  ret void
}

!1 = !{i32 1}
