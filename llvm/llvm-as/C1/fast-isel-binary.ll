





define void @add_i1(i1 %a, i1 %b) nounwind ssp {
entry:


  %a.addr = alloca i1, align 4
  %0 = add i1 %a, %b


  store i1 %0, i1* %a.addr, align 4
  ret void
}

define void @add_i8(i8 %a, i8 %b) nounwind ssp {
entry:


  %a.addr = alloca i8, align 4
  %0 = add i8 %a, %b


  store i8 %0, i8* %a.addr, align 4
  ret void
}

define void @add_i16(i16 %a, i16 %b) nounwind ssp {
entry:


  %a.addr = alloca i16, align 4
  %0 = add i16 %a, %b


  store i16 %0, i16* %a.addr, align 4
  ret void
}



define void @or_i1(i1 %a, i1 %b) nounwind ssp {
entry:


  %a.addr = alloca i1, align 4
  %0 = or i1 %a, %b


  store i1 %0, i1* %a.addr, align 4
  ret void
}

define void @or_i8(i8 %a, i8 %b) nounwind ssp {
entry:


  %a.addr = alloca i8, align 4
  %0 = or i8 %a, %b


  store i8 %0, i8* %a.addr, align 4
  ret void
}

define void @or_i16(i16 %a, i16 %b) nounwind ssp {
entry:


  %a.addr = alloca i16, align 4
  %0 = or i16 %a, %b


  store i16 %0, i16* %a.addr, align 4
  ret void
}



define void @sub_i1(i1 %a, i1 %b) nounwind ssp {
entry:


  %a.addr = alloca i1, align 4
  %0 = sub i1 %a, %b


  store i1 %0, i1* %a.addr, align 4
  ret void
}

define void @sub_i8(i8 %a, i8 %b) nounwind ssp {
entry:


  %a.addr = alloca i8, align 4
  %0 = sub i8 %a, %b


  store i8 %0, i8* %a.addr, align 4
  ret void
}

define void @sub_i16(i16 %a, i16 %b) nounwind ssp {
entry:


  %a.addr = alloca i16, align 4
  %0 = sub i16 %a, %b


  store i16 %0, i16* %a.addr, align 4
  ret void
}
