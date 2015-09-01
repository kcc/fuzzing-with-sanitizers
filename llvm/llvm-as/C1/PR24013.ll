

define void @f(i1 zeroext %p1) {

entry:
  br label %lbl

lbl.loopexit:                                     
  br label %lbl

lbl:                                              
  %phi = phi i32 [ %conv, %lbl.loopexit ], [ undef, %entry ]

  br label %if.then.5

if.then.5:                                        
  %conv = zext i1 undef to i32
  br label %if.then.5
}
