


@a = external global i32
@b = external global i32
@c = external global i32
@d = external global i32


define i32 @combine_gt_ge_10() #0 {






entry:
  %0 = load i32, i32* @a, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    
  %1 = load i32, i32* @b, align 4
  %2 = load i32, i32* @c, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %return, label %land.lhs.true3

lor.lhs.false:                                    
  %cmp2 = icmp sgt i32 %0, 9
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   
  %3 = load i32, i32* @b, align 4
  %4 = load i32, i32* @d, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}


define i32 @combine_gt_lt_5() #0 {






entry:
  %0 = load i32, i32* @a, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    
  %1 = load i32, i32* @b, align 4
  %2 = load i32, i32* @c, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %return, label %if.end

lor.lhs.false:                                    
  %cmp2 = icmp slt i32 %0, 5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   
  %3 = load i32, i32* @b, align 4
  %4 = load i32, i32* @d, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}


define i32 @combine_lt_ge_5() #0 {






entry:
  %0 = load i32, i32* @a, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    
  %1 = load i32, i32* @b, align 4
  %2 = load i32, i32* @c, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %return, label %land.lhs.true3

lor.lhs.false:                                    
  %cmp2 = icmp slt i32 %0, 6
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   
  %3 = load i32, i32* @b, align 4
  %4 = load i32, i32* @d, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}


define i32 @combine_lt_gt_5() #0 {






entry:
  %0 = load i32, i32* @a, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    
  %1 = load i32, i32* @b, align 4
  %2 = load i32, i32* @c, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %return, label %if.end

lor.lhs.false:                                    
  %cmp2 = icmp sgt i32 %0, 5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   
  %3 = load i32, i32* @b, align 4
  %4 = load i32, i32* @d, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}


define i32 @combine_gt_lt_n5() #0 {






entry:
  %0 = load i32, i32* @a, align 4
  %cmp = icmp sgt i32 %0, -5
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    
  %1 = load i32, i32* @b, align 4
  %2 = load i32, i32* @c, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %return, label %if.end

lor.lhs.false:                                    
  %cmp2 = icmp slt i32 %0, -5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   
  %3 = load i32, i32* @b, align 4
  %4 = load i32, i32* @d, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}


define i32 @combine_lt_gt_n5() #0 {






entry:
  %0 = load i32, i32* @a, align 4
  %cmp = icmp slt i32 %0, -5
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    
  %1 = load i32, i32* @b, align 4
  %2 = load i32, i32* @c, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %return, label %if.end

lor.lhs.false:                                    
  %cmp2 = icmp sgt i32 %0, -5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   
  %3 = load i32, i32* @b, align 4
  %4 = load i32, i32* @d, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

%struct.Struct = type { i64, i64 }

@glob = internal unnamed_addr global %struct.Struct* null, align 8

declare %struct.Struct* @Update(%struct.Struct*) #1


define void @combine_non_adjacent_cmp_br(%struct.Struct* nocapture readonly %hdCall) #0 {
entry:
  %size = getelementptr inbounds %struct.Struct, %struct.Struct* %hdCall, i64 0, i32 0
  %0 = load i64, i64* %size, align 8
  br label %land.rhs

land.rhs:
  %rp.06 = phi i64 [ %0, %entry ], [ %sub, %while.body ]
  %1 = load i64, i64* inttoptr (i64 24 to i64*), align 8
  %cmp2 = icmp sgt i64 %1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:
  %2 = load %struct.Struct*, %struct.Struct** @glob, align 8
  %call = tail call %struct.Struct* @Update(%struct.Struct* %2) #2
  %sub = add nsw i64 %rp.06, -2
  %cmp = icmp slt i64 %0, %rp.06
  br i1 %cmp, label %land.rhs, label %while.end

while.end:
  ret void
}


declare void @do_something() #1

define i32 @do_nothing_if_resultant_opcodes_would_differ() #0 {





entry:
  %0 = load i32, i32* @a, align 4
  %cmp4 = icmp slt i32 %0, -1
  br i1 %cmp4, label %while.body.preheader, label %while.end

while.body.preheader:                             
  br label %while.body

while.body:                                       
  %i.05 = phi i32 [ %inc, %while.body ], [ %0, %while.body.preheader ]
  tail call void @do_something() #2
  %inc = add nsw i32 %i.05, 1
  %cmp = icmp slt i32 %i.05, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   
  %.pre = load i32, i32* @a, align 4
  br label %while.end

while.end:                                        
  %1 = phi i32 [ %.pre, %while.cond.while.end_crit_edge ], [ %0, %entry ]
  %cmp1 = icmp slt i32 %1, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  %2 = load i32, i32* @b, align 4
  %3 = load i32, i32* @d, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 123, %land.lhs.true ]
  ret i32 %retval.0
}

define i32 @do_nothing_if_compares_can_not_be_adjusted_to_each_other() #0 {





entry:
  %0 = load i32, i32* @a, align 4
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %while.body.preheader, label %while.end

while.body.preheader:                             
  br label %while.body

while.body:                                       
  %i.05 = phi i32 [ %inc, %while.body ], [ %0, %while.body.preheader ]
  tail call void @do_something() #2
  %inc = add nsw i32 %i.05, 1
  %cmp = icmp slt i32 %i.05, 0
  br i1 %cmp, label %while.body, label %while.end.loopexit

while.end.loopexit:                               
  br label %while.end

while.end:                                        
  %1 = load i32, i32* @c, align 4
  %cmp1 = icmp sgt i32 %1, -3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  %2 = load i32, i32* @b, align 4
  %3 = load i32, i32* @d, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %return, label %if.end

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 123, %land.lhs.true ]
  ret i32 %retval.0
}








define i32 @fcmpri(i32 %argc, i8** nocapture readonly %argv) {













entry:
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.end, label %return

if.end:                                           
  %call = call i32 @zoo(i32 1)
  %call2 = call double @yoo(i32 -1)
  %cmp4 = icmp sgt i32 %call, 0
  %add = zext i1 %cmp4 to i32
  %cond = add nsw i32 %add, %call
  %call7 = call i32 @xoo(i32 %cond, i32 2)
  %cmp9 = fcmp ogt double %call2, 0.000000e+00
  br i1 %cmp9, label %cond.end14, label %cond.false12

cond.false12:                                     
  %sub = fadd fast double %call2, -1.000000e+00
  br label %cond.end14

cond.end14:                                       
  %cond15 = phi double [ %sub, %cond.false12 ], [ %call2, %if.end ]
  %call16 = call i32 @woo(double %cond15, double -2.000000e+00)
  br label %return

return:                                           
  %retval.0 = phi i32 [ 4, %cond.end14 ], [ 3, %land.lhs.true ]
  ret i32 %retval.0
}

define void @cmp_shifted(i32 %in, i32 %lhs, i32 %rhs) {





  %tst_low = icmp sgt i32 %in, 0
  br i1 %tst_low, label %true, label %false

true:
  call i32 @zoo(i32 128)
  ret void

false:
  %tst = icmp sgt i32 %in, 8191
  br i1 %tst, label %truer, label %falser

truer:
  call i32 @zoo(i32 42)
  ret void

falser:
  call i32 @zoo(i32 1)
  ret void
}

declare i32 @zoo(i32)

declare double @yoo(i32)

declare i32 @xoo(i32, i32)

declare i32 @woo(double, double)
