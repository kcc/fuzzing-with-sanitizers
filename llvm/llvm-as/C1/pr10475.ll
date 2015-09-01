



define void @autogen_262380_1000() {
BB:
  br label %CF79

CF79:                                             
  br i1 undef, label %CF79, label %CF84.critedge.critedge

CF84.critedge.critedge:                           
  %L35 = load <8 x i32>, <8 x i32>* undef
  br label %CF85

CF85:                                             
  br i1 undef, label %CF85, label %CF86

CF86:                                             
  %B61 = sub <8 x i32> %L35, zeroinitializer
  %S64 = icmp ne <8 x i32> %B61, zeroinitializer
  %E73 = extractelement <8 x i1> %S64, i32 6
  br i1 %E73, label %CF86, label %CF87

CF87:                                             
  br i1 undef, label %CF87, label %CF88

CF88:                                             
  ret void
}
