











define void @x0f2f640ab6718391b59ce96d9fdeda54(i32 %arg, i32 %arg1, i32 %arg2, i32* %.out) nounwind {
_:
  %tmp = sub i32 %arg, %arg1
  %tmp3 = mul i32 %tmp, -1268345047
  %tmp4 = add i32 %tmp3, 2014710503
  %tmp5 = add i32 %tmp3, -1048397418
  %tmp6 = sub i32 %tmp4, %tmp5
  %tmp7 = sub i32 -2014710503, %tmp3
  %tmp8 = add i32 %tmp6, %tmp7
  store i32 %tmp8, i32* %.out
  ret void
}
