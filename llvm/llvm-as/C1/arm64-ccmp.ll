
target triple = "arm64-apple-ios"








define i32 @single_same(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 5
  %cmp1 = icmp eq i32 %b, 17
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}









define i32 @single_different(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp sle i32 %a, 5
  %cmp1 = icmp ne i32 %b, 17
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}







define i32 @single_flagclobber(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    
  %cmp1 = icmp slt i32 %b, 7
  %mul = shl nsw i32 %b, 1
  %add = add nsw i32 %b, 1
  %cond = select i1 %cmp1, i32 %mul, i32 %add
  %cmp2 = icmp slt i32 %cond, 17
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:                                           
  ret i32 7
}







define i32 @single_flagclobber_tbz(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    
  %cmp1 = icmp slt i32 %b, 7
  %mul = shl nsw i32 %b, 1
  %add = add nsw i32 %b, 1
  %cond = select i1 %cmp1, i32 %mul, i32 %add
  %and = and i32 %cond, 8
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:                                           
  ret i32 7
}












define i32 @speculate_division(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp sgt i32 %a, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:
  %div = sdiv i32 %b, %a
  %cmp1 = icmp slt i32 %div, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}







define i32 @single_fcmp(i32 %a, float %b) nounwind ssp {
entry:
  %cmp = icmp sgt i32 %a, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:
  %conv = sitofp i32 %a to float
  %div = fdiv float %b, %conv
  %cmp1 = fcmp oge float %div, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}







define void @multi_different(i32 %a, i32 %b, i32 %c) nounwind ssp {
entry:
  %cmp = icmp sgt i32 %a, %b
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:
  %div = sdiv i32 %b, %a
  %cmp1 = icmp eq i32 %div, 5
  %cmp4 = icmp sgt i32 %div, %c
  %or.cond = and i1 %cmp1, %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret void
}





define i32 @cbz_head(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 0
  %cmp1 = icmp ne i32 %b, 17
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}






define i32 @immediate_range(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 5
  %cmp1 = icmp eq i32 %b, 32
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}






define i32 @cbz_second(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 0
  %cmp1 = icmp ne i32 %b, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}






define i32 @cbnz_second(i32 %a, i32 %b) nounwind ssp {
entry:
  %cmp = icmp eq i32 %a, 0
  %cmp1 = icmp eq i32 %b, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:
  %call = tail call i32 @foo() nounwind
  br label %if.end

if.end:
  ret i32 7
}
declare i32 @foo()

%str1 = type { %str2 }
%str2 = type { [24 x i8], i8*, i32, %str1*, i32, [4 x i8], %str1*, %str1*, %str1*, %str1*, %str1*, %str1*, %str1*, %str1*, %str1*, i8*, i8, i8*, %str1*, i8* }




define void @build_modify_expr() nounwind ssp {
entry:
  switch i32 undef, label %sw.bb.i.i [
    i32 69, label %if.end85
    i32 70, label %if.end85
    i32 71, label %if.end85
    i32 72, label %if.end85
    i32 73, label %if.end85
    i32 105, label %if.end85
    i32 106, label %if.end85
  ]

if.end85:
  ret void

sw.bb.i.i:
  %ref.tr.i.i = phi %str1* [ %0, %sw.bb.i.i ], [ undef, %entry ]
  %operands.i.i = getelementptr inbounds %str1, %str1* %ref.tr.i.i, i64 0, i32 0, i32 2
  %arrayidx.i.i = bitcast i32* %operands.i.i to %str1**
  %0 = load %str1*, %str1** %arrayidx.i.i, align 8
  %code1.i.i.phi.trans.insert = getelementptr inbounds %str1, %str1* %0, i64 0, i32 0, i32 0, i64 16
  br label %sw.bb.i.i
}


define i64 @select_and(i32 %w0, i32 %w1, i64 %x2, i64 %x3) {




  %1 = icmp slt i32 %w0, %w1
  %2 = icmp ne i32 5, %w1
  %3 = and i1 %1, %2
  %sel = select i1 %3, i64 %x2, i64 %x3
  ret i64 %sel
}


define i64 @select_or(i32 %w0, i32 %w1, i64 %x2, i64 %x3) {




  %1 = icmp slt i32 %w0, %w1
  %2 = icmp ne i32 5, %w1
  %3 = or i1 %1, %2
  %sel = select i1 %3, i64 %x2, i64 %x3
  ret i64 %sel
}


define i16 @select_complicated(double %v1, double %v2, i16 %a, i16 %b) {







  %1 = fcmp one double %v1, %v2
  %2 = fcmp oeq double %v2, 13.0
  %3 = fcmp oeq double %v1, 42.0
  %or0 = or i1 %2, %3
  %or1 = or i1 %1, %or0
  %sel = select i1 %or1, i16 %a, i16 %b
  ret i16 %sel
}


define i64 @gccbug(i64 %x0, i64 %x1) {






  %cmp0 = icmp eq i64 %x1, 0
  %cmp1 = icmp eq i64 %x0, 2
  %cmp2 = icmp eq i64 %x0, 4

  %or = or i1 %cmp2, %cmp1
  %and = and i1 %or, %cmp0

  %sel = select i1 %and, i64 2, i64 1
  ret i64 %sel
}


define i32 @select_ororand(i32 %w0, i32 %w1, i32 %w2, i32 %w3) {






  %c0 = icmp eq i32 %w0, 0
  %c1 = icmp ugt i32 %w1, 13
  %c2 = icmp slt i32 %w2, 2
  %c4 = icmp sgt i32 %w3, 4
  %or = or i1 %c0, %c1
  %and = and i1 %c2, %c4
  %or1 = or i1 %or, %and
  %sel = select i1 %or1, i32 %w3, i32 0
  ret i32 %sel
}


define i32 @select_andor(i32 %v1, i32 %v2, i32 %v3) {





  %c0 = icmp eq i32 %v1, %v2
  %c1 = icmp sge i32 %v2, %v3
  %c2 = icmp eq i32 %v1, 0
  %or = or i1 %c2, %c1
  %and = and i1 %or, %c0
  %sel = select i1 %and, i32 %v1, i32 %v2
  ret i32 %sel
}


define i64 @select_noccmp1(i64 %v1, i64 %v2, i64 %v3, i64 %r) {















  %c0 = icmp slt i64 %v1, 0
  %c1 = icmp sgt i64 %v1, 13
  %c2 = icmp slt i64 %v3, 2
  %c4 = icmp sgt i64 %v3, 4
  %and0 = and i1 %c0, %c1
  %and1 = and i1 %c2, %c4
  %or = or i1 %and0, %and1
  %sel = select i1 %or, i64 0, i64 %r
  ret i64 %sel
}

@g = global i32 0




define i64 @select_noccmp2(i64 %v1, i64 %v2, i64 %v3, i64 %r) {












  %c0 = icmp slt i64 %v1, 0
  %c1 = icmp sgt i64 %v1, 13
  %or = or i1 %c0, %c1
  %sel = select i1 %or, i64 0, i64 %r
  %ext = sext i1 %or to i32
  store volatile i32 %ext, i32* @g
  ret i64 %sel
}
