

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"


define <4 x float> @t1(i8* %p1) {




  %cast = bitcast i8* %p1 to <4 x float>*
  %r = load <4 x float>, <4 x float>* %cast, align 1
  ret <4 x float> %r
}


define <4 x float> @t2(i8* %p1) {



  %cast = bitcast i8* %p1 to <4 x float>*
  %r = load <4 x float>, <4 x float>* %cast, align 4
  ret <4 x float> %r
}


define <4 x float> @t3(i8* %p1) {


  %cast = bitcast i8* %p1 to <4 x float>*
  %r = load <4 x float>, <4 x float>* %cast, align 8
  ret <4 x float> %r
}


define <4 x float> @t4(i8* %p1) {

  %cast = bitcast i8* %p1 to <4 x float>*
  %r = load <4 x float>, <4 x float>* %cast, align 16
  ret <4 x float> %r
}



define void @s1(<4 x float>* %p1, <4 x float> %v) {




  store <4 x float> %v, <4 x float>* %p1, align 1
  ret void
}


define void @s2(<4 x float>* %p1, <4 x float> %v) {



  store <4 x float> %v, <4 x float>* %p1, align 4
  ret void
}


define void @s3(<4 x float>* %p1, <4 x float> %v) {

  store <4 x float> %v, <4 x float>* %p1, align 8
  ret void
}


define void @s4(<4 x float>* %p1, <4 x float> %v) {

  store <4 x float> %v, <4 x float>* %p1, align 16
  ret void
}

