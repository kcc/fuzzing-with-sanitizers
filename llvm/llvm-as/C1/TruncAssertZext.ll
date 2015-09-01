




define i64 @main(i64 %a) {



  %or = or i64 %a, -2
  %trunc = trunc i64 %or to i32
  br label %l
l:
  %ext = zext i32 %trunc to i64
  ret i64 %ext
}
