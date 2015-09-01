




declare void @fooi8(i8)
declare void @fooi16(i16)

define void @foo(i1 %cmp) nounwind ssp {
entry:
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        
  br label %cond.end

cond.false:                                       
  br label %cond.end

cond.end:                                         
  %cond = phi i1 [ 0, %cond.true ], [ 1, %cond.false ]
  br i1 %cond, label %cond.true8, label %cond.false8

cond.true8:                                       
  br label %cond.end8

cond.false8:                                      
  br label %cond.end8

cond.end8:                                        
  %cond8 = phi i8 [ 0, %cond.true8 ], [ 1, %cond.false8 ]
  call void @fooi8(i8 %cond8)
  br i1 0, label %cond.true16, label %cond.false16

cond.true16:                                       
  br label %cond.end16

cond.false16:                                      
  br label %cond.end16

cond.end16:                                        
  %cond16 = phi i16 [ 0, %cond.true16 ], [ 1, %cond.false16 ]
  call void @fooi16(i16 %cond16)
  ret void
}
