









define void @foo1() nounwind {
entry:











  tail call void @foo2(i32 3) nounwind
  ret void
}

declare void @foo2(i32)



define void @foo3(i32 %a) nounwind {
entry:




  %conv = sitofp i32 %a to double
  tail call void @foo4(double %conv) nounwind
  ret void
}

declare void @foo4(double)

@g2 = external global i32
@g1 = external global i32
@g3 = external global i32







define void @foo5(i32 %a) nounwind {
entry:
  %0 = load i32, i32* @g2, align 4
  %tobool = icmp eq i32 %a, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:
  %1 = load i32, i32* @g1, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* @g1, align 4
  br label %if.end

if.else:
  %2 = load i32, i32* @g3, align 4
  %sub = sub nsw i32 %2, %0
  store i32 %sub, i32* @g3, align 4
  br label %if.end

if.end:
  ret void
}







define void @foo6(float %a0, double %a1) nounwind {
entry:
  tail call void @foo7(double %a1, float %a0) nounwind
  ret void
}

declare void @foo7(double, float)







@foo9 = common global void ()* null, align 4

define i32 @foo8(i32 %a) nounwind {
entry:
  store i32 %a, i32* @g1, align 4
  %0 = load void ()*, void ()** @foo9, align 4
  tail call void %0() nounwind
  %1 = load i32, i32* @g1, align 4
  %add = add nsw i32 %1, %a
  ret i32 %add
}










define void @foo10() nounwind {
entry:
  tail call void @foo11() nounwind
  tail call void @foo11() nounwind
  store i32 0, i32* @g1, align 4
  tail call void @foo11() nounwind
  store i32 0, i32* @g1, align 4
  ret void
}

declare void @foo11()










define i32 @succbbs_loop1(i32* nocapture %a, i32 %n) {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         
  %s.06 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %i.05
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, %s.06
  %inc = add nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %s.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %s.0.lcssa
}







define internal fastcc void @foo101() {
entry:
  tail call void @foo100()
  tail call void @foo100()
  ret void
}

define void @succbbs_br1(i32 %a) {
entry:
  %tobool = icmp eq i32 %a, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  tail call fastcc void @foo101()
  br label %if.end

if.end:                                           
  ret void
}

declare void @foo100()
