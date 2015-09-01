




@x = global i32 0, align 4
@y = global i32 0, align 4
@z = global i32 0, align 4

define void @f1(i32 %a1, i32 %a2) {





  store i32 %a1, i32* @x, align 4
  store i32 %a2, i32* @y, align 4
  ret void
}

define void @g1(i32 %a1, i32 %a2) {





  store i32 %a1, i32* @y, align 4
  store i32 %a2, i32* @z, align 4
  ret void
}
















