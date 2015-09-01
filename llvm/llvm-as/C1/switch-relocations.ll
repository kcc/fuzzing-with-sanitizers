










define void @lua_gc(i32 %what) nounwind {
entry:
  switch i32 %what, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
    i32 4, label %sw.bb18
    i32 6, label %sw.bb57
  ]

sw.bb:                                            
  ret void

sw.bb14:                                          
  ret void

sw.bb18:                                          
  ret void

sw.bb57:                                          
  ret void

sw.epilog:                                        
  ret void
}
