













define i32 @t0(i1 zeroext %a) nounwind {
  %1 = zext i1 %a to i32
  ret i32 %1
}

define i32 @t1(i8 signext %a) nounwind {
  %1 = sext i8 %a to i32
  ret i32 %1
}

define i32 @t2(i8 zeroext %a) nounwind {
  %1 = zext i8 %a to i32
  ret i32 %1
}

define i32 @t3(i16 signext %a) nounwind {
  %1 = sext i16 %a to i32
  ret i32 %1
}

define i32 @t4(i16 zeroext %a) nounwind {
  %1 = zext i16 %a to i32
  ret i32 %1
}

define void @foo(i8 %a, i16 %b) nounwind {







  %1 = call i32 @t0(i1 zeroext 1)




  %2 = call i32 @t1(i8 signext %a)




  %3 = call i32 @t2(i8 zeroext %a)




  %4 = call i32 @t3(i16 signext %b)




  %5 = call i32 @t4(i16 zeroext %b)




%6 = call i32 @t2(i8 zeroext 255)


%7 = call i32 @t4(i16 zeroext 65535)
  ret void
}

define void @foo2() nounwind {
  %1 = call signext i16 @t5()
  %2 = call zeroext i16 @t6()
  %3 = call signext i8 @t7()
  %4 = call zeroext i8 @t8()
  %5 = call zeroext i1 @t9()
  ret void
}

declare signext i16 @t5()
declare zeroext i16 @t6()
declare signext i8 @t7()
declare zeroext i8 @t8()
declare zeroext i1 @t9()

define i32 @t10() {
entry:










































  %call = call i32 @bar(i8 zeroext 0, i8 zeroext -8, i8 zeroext -69, i8 zeroext 28, i8 zeroext 40, i8 zeroext -70)
  ret i32 0
}

declare i32 @bar(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext)

define i32 @bar0(i32 %i) nounwind {
  ret i32 0
}

define void @foo3() uwtable {








  %fptr = alloca i32 (i32)*, align 8
  store i32 (i32)* @bar0, i32 (i32)** %fptr, align 8
  %1 = load i32 (i32)*, i32 (i32)** %fptr, align 8
  %call = call i32 %1(i32 0)
  ret void
}

define i32 @LibCall(i32 %a, i32 %b) {
entry:














        %tmp1 = udiv i32 %a, %b         
        ret i32 %tmp1
}



define fastcc void @fast_callee(float %i) ssp {
entry:








  call void @print(float %i)
  ret void
}

define void @fast_caller() ssp {
entry:










  call fastcc void @fast_callee(float 0x401C666660000000)
  ret void
}

define void @no_fast_callee(float %i) ssp {
entry:








  call void @print(float %i)
  ret void
}

define void @no_fast_caller() ssp {
entry:










  call void @no_fast_callee(float 0x401C666660000000)
  ret void
}

declare void @bar2(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6)

define void @call_undef_args() {








  call void @bar2(i32 1, i32 2, i32 3, i32 4, i32 undef, i32 6)
  ret void
}

declare void @print(float)
