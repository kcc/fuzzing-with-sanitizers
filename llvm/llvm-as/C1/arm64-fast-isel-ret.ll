


define void @t0() nounwind ssp {
entry:


  ret void
}

define i32 @t1(i32 %a) nounwind ssp {
entry:




  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %tmp = load i32, i32* %a.addr, align 4
  ret i32 %tmp
}

define i64 @t2(i64 %a) nounwind ssp {
entry:




  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %tmp = load i64, i64* %a.addr, align 8
  ret i64 %tmp
}

define signext i16 @ret_i16(i16 signext %a) nounwind {
entry:


  %a.addr = alloca i16, align 1
  store i16 %a, i16* %a.addr, align 1
  %0 = load i16, i16* %a.addr, align 1
  ret i16 %0
}

define signext i8 @ret_i8(i8 signext %a) nounwind {
entry:


  %a.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  ret i8 %0
}

define signext i1 @ret_i1(i1 signext %a) nounwind {
entry:


  %a.addr = alloca i1, align 1
  store i1 %a, i1* %a.addr, align 1
  %0 = load i1, i1* %a.addr, align 1
  ret i1 %0
}
