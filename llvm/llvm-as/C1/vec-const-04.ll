




define <2 x i64> @f1() {



  ret <2 x i64> zeroinitializer
}


define <2 x i64> @f2() {



  ret <2 x i64> <i64 -1, i64 -1>
}


define <2 x i64> @f3() {



  ret <2 x i64> <i64 18374686483966525440, i64 72057589759737600>
}


define <2 x i64> @f4() {



  ret <2 x i64> <i64 18374686483966525440, i64 undef>
}


define <2 x i64> @f5() {



  ret <2 x i64> <i64 18374686483966525441, i64 72057589759737600>
}
