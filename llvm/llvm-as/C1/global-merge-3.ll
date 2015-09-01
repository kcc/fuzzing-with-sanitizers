



@x = global [1000 x i32] zeroinitializer, align 1
@y = global [1000 x i32] zeroinitializer, align 1
@z = internal global i32 1, align 4

define void @f1(i32 %a1, i32 %a2, i32 %a3) {





  %x3 = getelementptr inbounds [1000 x i32], [1000 x i32]* @x, i32 0, i64 3
  %y3 = getelementptr inbounds [1000 x i32], [1000 x i32]* @y, i32 0, i64 3
  store i32 %a1, i32* %x3, align 4
  store i32 %a2, i32* %y3, align 4
  store i32 %a3, i32* @z, align 4
  ret void
}






























