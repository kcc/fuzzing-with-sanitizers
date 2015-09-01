





define <2 x i64> @test1(<2 x i64> %a, <2 x i64> %b) {




  %shuf1 = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32><i32 0, i32 2>
  %shuf2 = shufflevector <2 x i64> %b, <2 x i64> zeroinitializer, <2 x i32><i32 2, i32 1>
  %or = or <2 x i64> %shuf1, %shuf2
  ret <2 x i64> %or
}


define <4 x i32> @test2(<4 x i32> %a, <4 x i32> %b) {




  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 4, i32 2, i32 3>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 1, i32 4, i32 4>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <2 x i64> @test3(<2 x i64> %a, <2 x i64> %b) {




  %shuf1 = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32><i32 2, i32 1>
  %shuf2 = shufflevector <2 x i64> %b, <2 x i64> zeroinitializer, <2 x i32><i32 0, i32 2>
  %or = or <2 x i64> %shuf1, %shuf2
  ret <2 x i64> %or
}


define <4 x i32> @test4(<4 x i32> %a, <4 x i32> %b) {




  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 4, i32 4, i32 4>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 1, i32 2, i32 3>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <4 x i32> @test5(<4 x i32> %a, <4 x i32> %b) {




  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 1, i32 2, i32 3>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 4, i32 4, i32 4>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <4 x i32> @test6(<4 x i32> %a, <4 x i32> %b) {




  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 1, i32 4, i32 4>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 4, i32 2, i32 3>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <4 x i32> @test7(<4 x i32> %a, <4 x i32> %b) {




  %and1 = and <4 x i32> %a, <i32 -1, i32 -1, i32 0, i32 0>
  %and2 = and <4 x i32> %b, <i32 0, i32 0, i32 -1, i32 -1>
  %or = or <4 x i32> %and1, %and2
  ret <4 x i32> %or
}


define <2 x i64> @test8(<2 x i64> %a, <2 x i64> %b) {




  %and1 = and <2 x i64> %a, <i64 -1, i64 0>
  %and2 = and <2 x i64> %b, <i64 0, i64 -1>
  %or = or <2 x i64> %and1, %and2
  ret <2 x i64> %or
}


define <4 x i32> @test9(<4 x i32> %a, <4 x i32> %b) {




  %and1 = and <4 x i32> %a, <i32 0, i32 0, i32 -1, i32 -1>
  %and2 = and <4 x i32> %b, <i32 -1, i32 -1, i32 0, i32 0>
  %or = or <4 x i32> %and1, %and2
  ret <4 x i32> %or
}


define <2 x i64> @test10(<2 x i64> %a, <2 x i64> %b) {




  %and1 = and <2 x i64> %a, <i64 0, i64 -1>
  %and2 = and <2 x i64> %b, <i64 -1, i64 0>
  %or = or <2 x i64> %and1, %and2
  ret <2 x i64> %or
}


define <4 x i32> @test11(<4 x i32> %a, <4 x i32> %b) {




  %and1 = and <4 x i32> %a, <i32 -1, i32 0, i32 0, i32 0>
  %and2 = and <4 x i32> %b, <i32 0, i32 -1, i32 -1, i32 -1>
  %or = or <4 x i32> %and1, %and2
  ret <4 x i32> %or
}


define <4 x i32> @test12(<4 x i32> %a, <4 x i32> %b) {




  %and1 = and <4 x i32> %a, <i32 0, i32 -1, i32 -1, i32 -1>
  %and2 = and <4 x i32> %b, <i32 -1, i32 0, i32 0, i32 0>
  %or = or <4 x i32> %and1, %and2
  ret <4 x i32> %or
}




define <4 x i32> @test13(<4 x i32> %a, <4 x i32> %b) {





  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 1, i32 1, i32 4, i32 4>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 4, i32 2, i32 3>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <2 x i64> @test14(<2 x i64> %a, <2 x i64> %b) {




  %shuf1 = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32><i32 0, i32 2>
  %shuf2 = shufflevector <2 x i64> %b, <2 x i64> zeroinitializer, <2 x i32><i32 2, i32 0>
  %or = or <2 x i64> %shuf1, %shuf2
  ret <2 x i64> %or
}


define <4 x i32> @test15(<4 x i32> %a, <4 x i32> %b) {






  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 4, i32 2, i32 1>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 2, i32 1, i32 4, i32 4>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <2 x i64> @test16(<2 x i64> %a, <2 x i64> %b) {





  %shuf1 = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32><i32 2, i32 0>
  %shuf2 = shufflevector <2 x i64> %b, <2 x i64> zeroinitializer, <2 x i32><i32 0, i32 2>
  %or = or <2 x i64> %shuf1, %shuf2
  ret <2 x i64> %or
}





define <4 x i32> @test17(<4 x i32> %a, <4 x i32> %b) {






  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 0, i32 4, i32 2>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 1, i32 4, i32 4>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <4 x i32> @test18(<4 x i32> %a, <4 x i32> %b) {








  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 0, i32 4, i32 4>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 4, i32 4, i32 4>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <4 x i32> @test19(<4 x i32> %a, <4 x i32> %b) {









  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32><i32 4, i32 0, i32 4, i32 3>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> zeroinitializer, <4 x i32><i32 0, i32 4, i32 2, i32 2>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}


define <2 x i64> @test20(<2 x i64> %a, <2 x i64> %b) {





  %shuf1 = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32><i32 0, i32 2>
  %shuf2 = shufflevector <2 x i64> %b, <2 x i64> zeroinitializer, <2 x i32><i32 0, i32 2>
  %or = or <2 x i64> %shuf1, %shuf2
  ret <2 x i64> %or
}


define <2 x i64> @test21(<2 x i64> %a, <2 x i64> %b) {





  %shuf1 = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32><i32 2, i32 0>
  %shuf2 = shufflevector <2 x i64> %b, <2 x i64> zeroinitializer, <2 x i32><i32 2, i32 0>
  %or = or <2 x i64> %shuf1, %shuf2
  ret <2 x i64> %or
}





define <2 x double> @test22(<2 x double> %a0, <2 x double> %a1) {




  %bc1 = bitcast <2 x double> %a0 to <2 x i64>
  %bc2 = bitcast <2 x double> %a1 to <2 x i64>
  %and1 = and <2 x i64> %bc1, <i64 0, i64 -1>
  %and2 = and <2 x i64> %bc2, <i64 -1, i64 0>
  %or = or <2 x i64> %and1, %and2
  %bc3 = bitcast <2 x i64> %or to <2 x double>
  ret <2 x double> %bc3
}


define <4 x float> @test23(<4 x float> %a0, <4 x float> %a1) {




  %bc1 = bitcast <4 x float> %a0 to <4 x i32>
  %bc2 = bitcast <4 x float> %a1 to <4 x i32>
  %and1 = and <4 x i32> %bc1, <i32 0, i32 -1, i32 -1, i32 0>
  %and2 = and <4 x i32> %bc2, <i32 -1, i32 0, i32 0, i32 -1>
  %or = or <4 x i32> %and1, %and2
  %bc3 = bitcast <4 x i32> %or to <4 x float>
  ret <4 x float> %bc3
}


define <4 x float> @test24(<4 x float> %a0, <4 x float> %a1) {




  %bc1 = bitcast <4 x float> %a0 to <2 x i64>
  %bc2 = bitcast <4 x float> %a1 to <2 x i64>
  %and1 = and <2 x i64> %bc1, <i64 0, i64 -1>
  %and2 = and <2 x i64> %bc2, <i64 -1, i64 0>
  %or = or <2 x i64> %and1, %and2
  %bc3 = bitcast <2 x i64> %or to <4 x float>
  ret <4 x float> %bc3
}


define <4 x float> @test25(<4 x float> %a0) {




  %bc1 = bitcast <4 x float> %a0 to <4 x i32>
  %bc2 = bitcast <4 x float> <float 1.0, float 1.0, float 1.0, float 1.0> to <4 x i32>
  %and1 = and <4 x i32> %bc1, <i32 0, i32 -1, i32 -1, i32 0>
  %and2 = and <4 x i32> %bc2, <i32 -1, i32 0, i32 0, i32 -1>
  %or = or <4 x i32> %and1, %and2
  %bc3 = bitcast <4 x i32> %or to <4 x float>
  ret <4 x float> %bc3
}





define <4 x i8> @test_crash(<4 x i8> %a, <4 x i8> %b) {




  %shuf1 = shufflevector <4 x i8> %a, <4 x i8> zeroinitializer, <4 x i32><i32 4, i32 4, i32 2, i32 3>
  %shuf2 = shufflevector <4 x i8> %b, <4 x i8> zeroinitializer, <4 x i32><i32 0, i32 1, i32 4, i32 4>
  %or = or <4 x i8> %shuf1, %shuf2
  ret <4 x i8> %or
}

