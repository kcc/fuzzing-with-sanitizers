


define i32 @jt() {
entry:
       br i1 true, label %bb3, label %bb

bb:             
       unreachable

bb3:            
       ret i32 0
}
