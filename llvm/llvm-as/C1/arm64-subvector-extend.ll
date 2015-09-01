







define <8 x i16> @func1(<8 x i8> %v0) nounwind {



  %r = zext <8 x i8> %v0 to <8 x i16>
  ret <8 x i16> %r
}

define <8 x i16> @func2(<8 x i8> %v0) nounwind {



  %r = sext <8 x i8> %v0 to <8 x i16>
  ret <8 x i16> %r
}

define <16 x i16> @func3(<16 x i8> %v0) nounwind {




  %r = zext <16 x i8> %v0 to <16 x i16>
  ret <16 x i16> %r
}

define <16 x i16> @func4(<16 x i8> %v0) nounwind {




  %r = sext <16 x i8> %v0 to <16 x i16>
  ret <16 x i16> %r
}





define <4 x i32> @afunc1(<4 x i16> %v0) nounwind {



  %r = zext <4 x i16> %v0 to <4 x i32>
  ret <4 x i32> %r
}

define <4 x i32> @afunc2(<4 x i16> %v0) nounwind {



  %r = sext <4 x i16> %v0 to <4 x i32>
  ret <4 x i32> %r
}

define <8 x i32> @afunc3(<8 x i16> %v0) nounwind {




  %r = zext <8 x i16> %v0 to <8 x i32>
  ret <8 x i32> %r
}

define <8 x i32> @afunc4(<8 x i16> %v0) nounwind {




  %r = sext <8 x i16> %v0 to <8 x i32>
  ret <8 x i32> %r
}

define <8 x i32> @bfunc1(<8 x i8> %v0) nounwind {





  %r = zext <8 x i8> %v0 to <8 x i32>
  ret <8 x i32> %r
}

define <8 x i32> @bfunc2(<8 x i8> %v0) nounwind {





  %r = sext <8 x i8> %v0 to <8 x i32>
  ret <8 x i32> %r
}





define <4 x i64> @zfunc1(<4 x i32> %v0) nounwind {




  %r = zext <4 x i32> %v0 to <4 x i64>
  ret <4 x i64> %r
}

define <4 x i64> @zfunc2(<4 x i32> %v0) nounwind {




  %r = sext <4 x i32> %v0 to <4 x i64>
  ret <4 x i64> %r
}

define <4 x i64> @bfunc3(<4 x i16> %v0) nounwind {





  %r = zext <4 x i16> %v0 to <4 x i64>
  ret <4 x i64> %r
}

define <4 x i64> @cfunc4(<4 x i16> %v0) nounwind {





  %r = sext <4 x i16> %v0 to <4 x i64>
  ret <4 x i64> %r
}
