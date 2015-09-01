


define ptx_kernel void @t1(i1* %a) {




  store i1 false, i1* %a
  ret void
}


define ptx_kernel void @t2(i1* %a, i8* %b) {







  %t1 = load i1, i1* %a
  %t2 = select i1 %t1, i8 1, i8 2
  store i8 %t2, i8* %b
  ret void
}
