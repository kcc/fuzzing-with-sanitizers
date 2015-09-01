



declare void @t1_callee(i8*)
define void @t1(i32* %a) {


  %b = bitcast i32* %a to i8*
  musttail call void @t1_callee(i8* %b)
  ret void
}

declare i8* @t2_callee()
define i32* @t2() {


  %v = musttail call i8* @t2_callee()
  %w = bitcast i8* %v to i32*
  ret i32* %w
}


define void @t3(i32 %n) alignstack(32) nounwind {
entry:








  %a = alloca i8, i32 %n
  call void @capture(i8* %a)
  musttail call void @t3_callee(i32 %n) nounwind
  ret void
}

declare void @capture(i8*)
declare void @t3_callee(i32)



define i32 @t4({}* %fn, i32 %n, i32 %r) {







entry:
  %r1 = add i32 %r, 1
  %n1 = sub i32 %n, 1
  %fn_cast = bitcast {}* %fn to i32 ({}*, i32, i32)*
  %r2 = musttail call i32 %fn_cast({}* %fn, i32 %n1, i32 %r1)
  ret i32 %r2
}


define i32 @t5({}* %fn, i32 %n, i32 %r) alignstack(32) {



















entry:
  %a = alloca i8, i32 %n
  call void @capture(i8* %a)
  %r1 = add i32 %r, 1
  %n1 = sub i32 %n, 1
  %fn_cast = bitcast {}* %fn to i32 ({}*, i32, i32)*
  %r2 = musttail call i32 %fn_cast({}* %fn, i32 %n1, i32 %r1)
  ret i32 %r2
}
