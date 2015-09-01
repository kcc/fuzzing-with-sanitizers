




define i32 @t1(i32 %a, i32 %b, i8** %retaddr) {



  store i8* blockaddress(@t1, %cond_true), i8** %retaddr
  %tmp2 = icmp eq i32 %a, 0
  br i1 %tmp2, label %cond_false, label %cond_true

cond_true:
  %tmp5 = add i32 %b, 1
  ret i32 %tmp5

cond_false:
  %tmp7 = add i32 %b, -1
  ret i32 %tmp7
}

define i32 @t2(i32 %a, i32 %b, i32 %c, i32 %d, i8** %retaddr) {





  store i8* blockaddress(@t2, %cond_true), i8** %retaddr
  %tmp2 = icmp sgt i32 %c, 10
  %tmp5 = icmp slt i32 %d, 4
  %tmp8 = and i1 %tmp5, %tmp2
  %tmp13 = add i32 %b, %a
  br i1 %tmp8, label %cond_true, label %UnifiedReturnBlock

cond_true:
  %tmp15 = add i32 %tmp13, %c
  %tmp1821 = sub i32 %tmp15, %d
  ret i32 %tmp1821

UnifiedReturnBlock:
  ret i32 %tmp13
}

define hidden fastcc void @t3(i8** %retaddr, i1 %tst, i8* %p8) {



bb:
  store i8* blockaddress(@t3, %KBBlockZero_return_1), i8** %retaddr
  br i1 %tst, label %bb77, label %bb7.i

bb7.i:                                            
  br label %bb2.i

KBBlockZero_return_1:                             
  ret void

KBBlockZero_return_0:                             
  ret void

bb77:                                             
  ret void

bb2.i:                                            
  br i1 %tst, label %bb6.i350, label %KBBlockZero.exit

bb6.i350:                                         
  br label %bb2.i

KBBlockZero.exit:                                 
  indirectbr i8* %p8, [label %KBBlockZero_return_1, label %KBBlockZero_return_0]
}

@foo = global i32 ()* null
define i32 @t4(i32 %x, i32 ()* %p_foo) {
entry:


  %cmp = icmp slt i32 %x, 60
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %tmp.2 = call i32 %p_foo()
  %sub = add nsw i32 %x, -1
  br label %return

if.else:                                          
  %sub1 = add nsw i32 %x, -120
  br label %return

return:                                           
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub1, %if.else ]
  ret i32 %retval.0
}



















































define i32 @wrapDistance(i32 %tx, i32 %sx, i32 %w) {
entry:
  %cmp = icmp slt i32 %sx, 60
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %sub = add nsw i32 %w, -1
  br label %return

if.else:                                          
  %sub1 = add nsw i32 %w, -120
  %cmp2 = icmp slt i32 %sub1, %sx
  %cmp3 = icmp slt i32 %tx, 120
  %or.cond = and i1 %cmp2, %cmp3
  br i1 %or.cond, label %if.then4, label %if.end5

if.then4:                                         
  %add = add nsw i32 %sx, 1
  br label %return

if.end5:                                          
  %sub6 = sub nsw i32 %sx, %tx
  br label %return

return:                                           
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add, %if.then4 ], [ %sub6, %if.end5 ]
  ret i32 %retval.0
}
