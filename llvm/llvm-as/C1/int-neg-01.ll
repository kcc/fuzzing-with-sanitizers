




define i32 @f1(i32 %val) {



  %neg = sub i32 0, %val
  ret i32 %neg
}


define i64 @f2(i32 %val) {



  %ext = sext i32 %val to i64
  %neg = sub i64 0, %ext
  ret i64 %neg
}


define i64 @f3(i64 %val) {



  %trunc = trunc i64 %val to i32
  %ext = sext i32 %trunc to i64
  %neg = sub i64 0, %ext
  ret i64 %neg
}


define i64 @f4(i64 %val) {



  %neg = sub i64 0, %val
  ret i64 %neg
}
