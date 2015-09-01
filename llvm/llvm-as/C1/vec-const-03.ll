




define <4 x i32> @f1() {



  ret <4 x i32> zeroinitializer
}


define <4 x i32> @f2() {



  ret <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>
}


define <4 x i32> @f3() {



  ret <4 x i32> <i32 4278190080, i32 4294901760, i32 16777215, i32 16776960>
}


define <4 x i32> @f4() {



  ret <4 x i32> <i32 4278190080, i32 undef, i32 16777215, i32 16776960>
}


define <4 x i32> @f5() {



  ret <4 x i32> <i32 4278190080, i32 1, i32 16777215, i32 16776960>
}


define <2 x i32> @f6() {



  ret <2 x i32> zeroinitializer
}


define <2 x i32> @f7() {



  ret <2 x i32> <i32 4278255360, i32 -256>
}
