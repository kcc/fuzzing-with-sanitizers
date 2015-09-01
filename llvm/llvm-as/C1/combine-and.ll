






define <4 x i32> @test1(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 -1, i32 0, i32 0, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test2(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 -1, i32 0, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test3(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 0, i32 -1, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test4(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 0, i32 0, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test5(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 -1, i32 0, i32 -1, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test6(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 -1, i32 0, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test7(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 0, i32 -1, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test8(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 -1, i32 0, i32 0, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test9(<4 x i32> %A) {




  %1 = and <4 x i32> %A, <i32 -1, i32 -1, i32 0, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test10(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 -1, i32 -1, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test11(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 0, i32 -1, i32 -1, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test12(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 -1, i32 -1, i32 -1, i32 0>
  ret <4 x i32> %1
}

define <4 x i32> @test13(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 -1, i32 -1, i32 0, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test14(<4 x i32> %A) {





  %1 = and <4 x i32> %A, <i32 -1, i32 0, i32 -1, i32 -1>
  ret <4 x i32> %1
}

define <4 x i32> @test15(<4 x i32> %A, <4 x i32> %B) {




  %1 = and <4 x i32> %A, <i32 -1, i32 0, i32 -1, i32 -1>
  %2 = and <4 x i32> %B, <i32 0, i32 -1, i32 0, i32 0>
  %3 = or <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @test16(<4 x i32> %A, <4 x i32> %B) {




  %1 = and <4 x i32> %A, <i32 -1, i32 0, i32 -1, i32 0>
  %2 = and <4 x i32> %B, <i32 0, i32 -1, i32 0, i32 -1>
  %3 = or <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @test17(<4 x i32> %A, <4 x i32> %B) {




  %1 = and <4 x i32> %A, <i32 0, i32 -1, i32 0, i32 -1>
  %2 = and <4 x i32> %B, <i32 -1, i32 0, i32 -1, i32 0>
  %3 = or <4 x i32> %1, %2
  ret <4 x i32> %3
}
