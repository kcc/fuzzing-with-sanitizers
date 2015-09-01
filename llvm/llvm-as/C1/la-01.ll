




@e4 = external global i32
@d4 = global i32 1
@e2 = external global i32, align 2
@d2 = global i32 1, align 2
@e1 = external global i32, align 1
@d1 = global i32 1, align 1

declare void @ef()
define void @df() {
  ret void
}

declare void @foo(i32 *)


define i32 *@f1() {



  ret i32 *@e4
}


define i32 *@f2() {



  ret i32 *@d4
}


define i32 *@f3() {



  ret i32 *@e2
}


define i32 *@f4() {



  ret i32 *@d2
}


define i32 *@f5() {



  ret i32 *@e1
}


define i32 *@f6() {



  ret i32 *@d1
}


define void() *@f7() {



  ret void() *@ef
}


define void() *@f8() {



  ret void() *@df
}


define i32 @f9() {






  call void @foo(i32 *@d2)
  call void @foo(i32 *@d2)
  ret i32 0
}
