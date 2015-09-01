









define void @autogen_SD3718491962() {
BB:
  
  

  
  
  
  

  %Cmp = fcmp ule double 0.000000e+00, undef
  %Cmp11 = fcmp ueq double 0xFDBD965CF1BB7FDA, undef
  br label %CF88

CF88:                                             
  %Sl18 = select i1 %Cmp, i1 %Cmp11, i1 %Cmp
  br i1 %Sl18, label %CF88, label %CF85

CF85:                                             
  ret void
}
