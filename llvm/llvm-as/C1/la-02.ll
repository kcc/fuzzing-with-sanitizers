





@ev = external global i32
@dv = global i32 0
@pv = protected global i32 0
@hv = hidden global i32 0

declare void @ef()
define void @df() {
  ret void
}
define protected void @pf() {
  ret void
}
define hidden void @hf() {
  ret void
}



define i32 *@f1() {



  ret i32 *@ev
}


define i32 *@f2() {



  ret i32 *@dv
}


define i32 *@f3() {



  ret i32 *@pv
}


define i32 *@f4() {



  ret i32 *@hv
}



define void() *@f5() {



  ret void() *@ef
}


define void() *@f6() {



  ret void() *@df
}


define void() *@f7() {



  ret void() *@pf
}


define void() *@f8() {



  ret void() *@hf
}
