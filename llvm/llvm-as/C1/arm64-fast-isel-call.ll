



define void @call0() nounwind {
entry:
  ret void
}

define void @foo0() nounwind {
entry:






  call void @call0()
  ret void
}

define i32 @call1(i32 %a) nounwind {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %tmp = load i32, i32* %a.addr, align 4
  ret i32 %tmp
}

define i32 @foo1(i32 %a) nounwind {
entry:




  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %tmp = load i32, i32* %a.addr, align 4
  %call = call i32 @call1(i32 %tmp)
  ret i32 %call
}

define i32 @sext_(i8 %a, i16 %b) nounwind {
entry:




  call void @foo_sext_(i8 signext %a, i16 signext %b)
  ret i32 0
}

declare void @foo_sext_(i8 %a, i16 %b)

define i32 @zext_(i8 %a, i16 %b) nounwind {
entry:



  call void @foo_zext_(i8 zeroext %a, i16 zeroext %b)
  ret i32 0
}

declare void @foo_zext_(i8 %a, i16 %b)

define i32 @t1(i32 %argc, i8** nocapture %argv) {
entry:




  %call = call i32 @bar(i8 zeroext 0, i8 zeroext -8, i8 zeroext -69, i8 zeroext 28, i8 zeroext 40, i8 zeroext -70, i8 zeroext 28, i8 zeroext 39, i8 zeroext -41)
  ret i32 0
}

declare i32 @bar(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext)


define i32 @t2() {
entry:













  %call = call i32 @func2(i64 zeroext 0, i32 signext -8, i16 zeroext 1023, i8 signext -254, i1 zeroext 0, i1 zeroext 1)
  ret i32 0
}

declare i32 @func2(i64 zeroext, i32 signext, i16 zeroext, i8 signext, i1 zeroext, i1 zeroext)

declare void @callee_b0f(i8 %bp10, i8 %bp11, i8 %bp12, i8 %bp13, i8 %bp14, i8 %bp15, i8 %bp17, i8 %bp18, i8 %bp19)
define void @caller_b1f() {
entry:


  call void @callee_b0f(i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 42)
  ret void
}

define zeroext i1 @call_arguments1(i1 %a1, i1 %a2, i1 %a3, i1 %a4, i1 %a5, i1 %a6, i1 %a7, i1 %a8) {





  %1 = and i1 %a1, %a2
  %2 = and i1 %a3, %a4
  %3 = and i1 %a5, %a6
  %4 = and i1 %a7, %a8
  %5 = and i1 %1, %2
  %6 = and i1 %3, %4
  %7 = and i1 %5, %6
  ret i1 %7
}

define i32 @call_arguments2(i8 zeroext %a1, i8 zeroext %a2, i8 zeroext %a3, i8 zeroext %a4, i8 signext %a5, i8 signext %a6, i8 signext %a7, i8 signext %a8) {





  %a1z = zext i8 %a1 to i32
  %a2z = zext i8 %a2 to i32
  %a3z = zext i8 %a3 to i32
  %a4z = zext i8 %a4 to i32
  %a5s = sext i8 %a5 to i32
  %a6s = sext i8 %a6 to i32
  %a7s = sext i8 %a7 to i32
  %a8s = sext i8 %a8 to i32
  %1 = add i32 %a1z, %a2z
  %2 = add i32 %a3z, %a4z
  %3 = add i32 %a5s, %a6s
  %4 = add i32 %a7s, %a8s
  %5 = add i32 %1, %2
  %6 = add i32 %3, %4
  %7 = add i32 %5, %6
  ret i32 %7
}

define i32 @call_arguments3(i16 zeroext %a1, i16 zeroext %a2, i16 zeroext %a3, i16 zeroext %a4, i16 signext %a5, i16 signext %a6, i16 signext %a7, i16 signext %a8) {





  %a1z = zext i16 %a1 to i32
  %a2z = zext i16 %a2 to i32
  %a3z = zext i16 %a3 to i32
  %a4z = zext i16 %a4 to i32
  %a5s = sext i16 %a5 to i32
  %a6s = sext i16 %a6 to i32
  %a7s = sext i16 %a7 to i32
  %a8s = sext i16 %a8 to i32
  %1 = add i32 %a1z, %a2z
  %2 = add i32 %a3z, %a4z
  %3 = add i32 %a5s, %a6s
  %4 = add i32 %a7s, %a8s
  %5 = add i32 %1, %2
  %6 = add i32 %3, %4
  %7 = add i32 %5, %6
  ret i32 %7
}

define i32 @call_arguments4(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8) {





  %1 = add i32 %a1, %a2
  %2 = add i32 %a3, %a4
  %3 = add i32 %a5, %a6
  %4 = add i32 %a7, %a8
  %5 = add i32 %1, %2
  %6 = add i32 %3, %4
  %7 = add i32 %5, %6
  ret i32 %7
}

define i64 @call_arguments5(i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, i64 %a8) {





  %1 = add i64 %a1, %a2
  %2 = add i64 %a3, %a4
  %3 = add i64 %a5, %a6
  %4 = add i64 %a7, %a8
  %5 = add i64 %1, %2
  %6 = add i64 %3, %4
  %7 = add i64 %5, %6
  ret i64 %7
}

define float @call_arguments6(float %a1, float %a2, float %a3, float %a4, float %a5, float %a6, float %a7, float %a8) {





  %1 = fadd float %a1, %a2
  %2 = fadd float %a3, %a4
  %3 = fadd float %a5, %a6
  %4 = fadd float %a7, %a8
  %5 = fadd float %1, %2
  %6 = fadd float %3, %4
  %7 = fadd float %5, %6
  ret float %7
}

define double @call_arguments7(double %a1, double %a2, double %a3, double %a4, double %a5, double %a6, double %a7, double %a8) {





  %1 = fadd double %a1, %a2
  %2 = fadd double %a3, %a4
  %3 = fadd double %a5, %a6
  %4 = fadd double %a7, %a8
  %5 = fadd double %1, %2
  %6 = fadd double %3, %4
  %7 = fadd double %5, %6
  ret double %7
}

define i64 @call_arguments8(i32 %a1, i64 %a2, i32 %a3, i64 %a4) {





  %aa1 = zext i32 %a1 to i64
  %aa3 = zext i32 %a3 to i64
  %1 = add i64 %aa1, %a2
  %2 = add i64 %aa3, %a4
  %3 = add i64 %1, %2
  ret i64 %3
}

define void @call_arguments9(i8 %a1, i16 %a2, i32 %a3, i64 %a4, float %a5, double %a6, i64 %a7, double %a8) {

  ret void
}


define void @call_blr(i64 %Fn, i1 %c) {


  br i1 %c, label %bb1, label %bb2
bb1:
  %1 = inttoptr i64 %Fn to void (i64)*
  br label %bb2
bb2:
  %2 = phi void (i64)* [ %1, %bb1 ], [ undef, %0 ]
  call void %2(i64 1)
  ret void
}

