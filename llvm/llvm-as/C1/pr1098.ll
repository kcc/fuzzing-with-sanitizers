


define void @foo(i1 %x) {

entry:
        br i1 %x, label %bb1, label %bb0
bb0:            
        br label %bb0
bb1:            
        br label %bb2
bb2:            
        ret void
}

