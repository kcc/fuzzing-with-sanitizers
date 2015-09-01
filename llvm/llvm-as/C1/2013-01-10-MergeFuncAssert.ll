


define void @t1() unnamed_addr uwtable ssp align 2 {
entry:
  switch i32 undef, label %sw.bb12 [
    i32 127, label %sw.bb
    i32 126, label %sw.bb4
  ]

sw.bb:                                            
  unreachable

sw.bb4:                                           
  unreachable

sw.bb12:                                          
  ret void
}

define void @t2() unnamed_addr uwtable ssp align 2 {
entry:
  switch i32 undef, label %sw.bb8 [
    i32 4, label %sw.bb
    i32 3, label %sw.bb4
  ]

sw.bb:                                            
  unreachable

sw.bb4:                                           
  ret void

sw.bb8:                                           
  unreachable
}
