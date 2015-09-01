
















define void @autogen_SD449609655(i8) {
BB:
  %Cmp = icmp ult i8 -3, %0
  br label %CF78

CF78:                                             
  %Sl31 = select i1 %Cmp, <4 x i8> <i8 -1, i8 -1, i8 -1, i8 -1>, <4 x i8> zeroinitializer
  br i1 undef, label %CF78, label %CF81

CF81:                                             
  br i1 undef, label %CF78, label %CF80

CF80:                                             
  %I59 = insertelement <4 x i8> %Sl31, i8 undef, i32 1
  ret void
}
