























define <16 x i8> @do_not_crash(i8*, i32*, i64*, i32, i64, i8) {
entry:
  store i8 %5, i8* %0
  %L5 = load i8, i8* %0
  %I8 = insertelement <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %L5, i32 7
  %B51 = shl <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %I8
  ret <16 x i8> %B51
}




