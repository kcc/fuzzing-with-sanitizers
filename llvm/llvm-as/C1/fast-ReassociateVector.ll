


define <4 x float> @test1(<4 x float> %a, <4 x float> %b, <4 x float> %c) {





  %mul = fmul fast <4 x float> %a, %c
  %mul1 = fmul fast <4 x float> %b, %c
  %add = fadd fast <4 x float> %mul, %mul1
  ret <4 x float> %add
}


define <2 x float> @test2(<2 x float> %a, <2 x float> %b, <2 x float> %c) {






  %t0 = fmul fast <2 x float> %a, %b
  %t1 = fmul fast <2 x float> %a, %t0
  %t2 = fmul fast <2 x float> %a, %c
  %t3 = fmul fast <2 x float> %a, %t2
  %t4 = fadd fast <2 x float> %t1, %t3
  ret <2 x float> %t4
}


define <2 x double> @test3(<2 x double> %a, <2 x double> %b, <2 x double> %c, <2 x double> %d) {






  %t0 = fmul fast <2 x double> %a, %b
  %t1 = fmul fast <2 x double> %a, %c
  %t2 = fadd fast <2 x double> %t1, %d
  %t3 = fadd fast <2 x double> %t0, %t2
  ret <2 x double> %t3
}


define <2 x float> @test4(<2 x float> %A) {






  %X = fadd <2 x float> %A, < float 1.000000e+00, float 1.000000e+00 >
  %Y = fadd <2 x float> %A, < float 1.000000e+00, float 1.000000e+00 >
  %R = fsub <2 x float> %X, %Y
  ret <2 x float> %R
}


define <2 x float> @test5(<2 x float> %X) {




  %Y = fmul fast <2 x float> %X, <float 4.700000e+01, float 4.700000e+01>
  %Z = fadd fast <2 x float> %Y, %Y
  ret <2 x float> %Z
}


define <2 x float> @test6(<2 x float> %X) {




  %Y = fadd fast <2 x float> %X ,%X
  %Z = fadd fast <2 x float> %Y, %X
  ret <2 x float> %Z
}


define <2 x double> @test7(<2 x double> %W) {




  %X = fmul fast <2 x double> %W, <double 127.0, double 127.0>
  %Y = fmul fast <2 x double> %W, <double 50.0, double 50.0>
  %Z = fadd fast <2 x double> %Y, %X
  ret <2 x double> %Z
}


define <2 x float> @test8(<2 x float> %arg) {




  %tmp1 = fmul fast <2 x float> <float 1.200000e+01, float 1.200000e+01>, %arg
  %tmp2 = fmul fast <2 x float> %tmp1, <float 1.200000e+01, float 1.200000e+01>
  ret <2 x float> %tmp2
}


define <2 x double> @test9(<2 x double> %b, <2 x double> %a) {




  %1 = fadd fast <2 x double> %a, <double 1.234000e+03, double 1.234000e+03>
  %2 = fadd fast <2 x double> %b, %1
  %3 = fsub fast <2 x double> <double 0.000000e+00, double 0.000000e+00>, %a
  %4 = fadd fast <2 x double> %2, %3
  ret <2 x double> %4
}


define <2 x float> @test10(<2 x float> %a, <2 x float> %b, <2 x float> %z) {





  %d = fmul fast <2 x float> %z, <float 4.000000e+01, float 4.000000e+01>
  %c = fsub fast <2 x float> <float 0.000000e+00, float 0.000000e+00>, %d
  %e = fmul fast <2 x float> %a, %c
  %f = fsub fast <2 x float> <float 0.000000e+00, float 0.000000e+00>, %e
  ret <2 x float> %f
}


define <2 x double> @test11(<2 x double> %x, <2 x double> %y) {





  %1 = fmul fast <2 x double> %x, %y
  %2 = fmul fast <2 x double> %y, %x
  %3 = fadd fast <2 x double> %1, %2
  ret <2 x double> %3
}


define <2 x i64> @test12(<2 x i64> %b, <2 x i64> %c) {





  %mul = mul <2 x i64> %c, %b
  %shl = shl <2 x i64> %mul, <i64 5, i64 5>
  ret <2 x i64> %shl
}




define <4 x float> @test13(<4 x float> %a, <4 x float> %b) {





  %mul = fmul fast <4 x float> <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00>, %b
  %add = fadd fast <4 x float> %mul, %a
  ret <4 x float> %add
}



define <2 x i64> @test14(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c) {






  %add = add <2 x i64> %b, %a
  %sub = sub <2 x i64> %add, %c
  ret <2 x i64> %sub
}

define <2 x i32> @test15(<2 x i32> %x, <2 x i32> %y) {




  %tmp1 = and <2 x i32> %x, %y
  %tmp2 = and <2 x i32> %y, %x
  %tmp3 = and <2 x i32> %tmp1, %tmp2
  ret <2 x i32> %tmp3
}

define <2 x i32> @test16(<2 x i32> %x, <2 x i32> %y) {




  %tmp1 = or <2 x i32> %x, %y
  %tmp2 = or <2 x i32> %y, %x
  %tmp3 = or <2 x i32> %tmp1, %tmp2
  ret <2 x i32> %tmp3
}


define <2 x i32> @test17(<2 x i32> %x, <2 x i32> %y) {





  %tmp1 = xor <2 x i32> %x, %y
  %tmp2 = xor <2 x i32> %y, %x
  %tmp3 = xor <2 x i32> %tmp1, %tmp2
  ret <2 x i32> %tmp3
}
