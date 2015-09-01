

define double @f1() nounwind {





  ret double 0x400921FB54442D11
}


define i32 @f2()  {




entry:
  switch i32 undef, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb13
    i32 4, label %sw.bb20
  ]

sw.bb:                                            
  br label %return

sw.bb6:                                           
  br label %return

sw.bb13:                                          
  br label %return

sw.bb20:                                          
  %div = sdiv i32 undef, undef
  br label %return

return:                                           
  %retval.0 = phi i32 [ %div, %sw.bb20 ], [ undef, %sw.bb13 ], [ undef, %sw.bb6 ], [ undef, %sw.bb ], [ 0, %entry ]
  ret i32 %retval.0
}
