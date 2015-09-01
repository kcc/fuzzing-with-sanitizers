


















































define i32 @foo(i32 %a, i32 %b) {
  %tmp = alloca i32, align 4
  %tmp2 = icmp slt i32 %a, %b
  br i1 %tmp2, label %true, label %false

true:
  store i32 %a, i32* %tmp, align 4
  %tmp4 = call i32 @doSomething(i32 0, i32* %tmp)
  br label %false

false:
  %tmp.0 = phi i32 [ %tmp4, %true ], [ %a, %0 ]
  ret i32 %tmp.0
}


declare i32 @doSomething(i32, i32*)











































define i32 @freqSaveAndRestoreOutsideLoop(i32 %cond, i32 %N) {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %for.preheader

for.preheader:
  tail call void asm "nop", ""()
  br label %for.body

for.body:                                         
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %for.preheader ]
  %sum.04 = phi i32 [ %add, %for.body ], [ 0, %for.preheader ]
  %call = tail call i32 asm sideeffect "movs $0, #1", "=r,~{r4}"()
  %add = add nsw i32 %call, %sum.04
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %shl = shl i32 %add, 3
  br label %if.end

if.else:                                          
  %mul = shl nsw i32 %N, 1
  br label %if.end

if.end:                                           
  %sum.1 = phi i32 [ %shl, %for.end ], [ %mul, %if.else ]
  ret i32 %sum.1
}

declare i32 @something(...)























define i32 @freqSaveAndRestoreOutsideLoop2(i32 %cond) {
entry:
  br label %for.preheader

for.preheader:
  tail call void asm "nop", ""()
  br label %for.body

for.body:                                         
  %i.04 = phi i32 [ 0, %for.preheader ], [ %inc, %for.body ]
  %sum.03 = phi i32 [ 0, %for.preheader ], [ %add, %for.body ]
  %call = tail call i32 asm sideeffect "movs $0, #1", "=r,~{r4}"()
  %add = add nsw i32 %call, %sum.03
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.exit, label %for.body

for.exit:
  tail call void asm "nop", ""()
  br label %for.end

for.end:                                          
  ret i32 %add
}










































define i32 @loopInfoSaveOutsideLoop(i32 %cond, i32 %N) {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %for.preheader

for.preheader:
  tail call void asm "nop", ""()
  br label %for.body

for.body:                                         
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %for.preheader ]
  %sum.04 = phi i32 [ %add, %for.body ], [ 0, %for.preheader ]
  %call = tail call i32 asm sideeffect "movs $0, #1", "=r,~{r4}"()
  %add = add nsw i32 %call, %sum.04
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  tail call void asm "nop", "~{r4}"()
  %shl = shl i32 %add, 3
  br label %if.end

if.else:                                          
  %mul = shl nsw i32 %N, 1
  br label %if.end

if.end:                                           
  %sum.1 = phi i32 [ %shl, %for.end ], [ %mul, %if.else ]
  ret i32 %sum.1
}

declare void @somethingElse(...)










































define i32 @loopInfoRestoreOutsideLoop(i32 %cond, i32 %N) #0 {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  tail call void asm "nop", "~{r4}"()
  br label %for.body

for.body:                                         
  %i.05 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  %sum.04 = phi i32 [ 0, %if.then ], [ %add, %for.body ]
  %call = tail call i32 asm sideeffect "movs $0, #1", "=r,~{r4}"()
  %add = add nsw i32 %call, %sum.04
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %shl = shl i32 %add, 3
  br label %if.end

if.else:                                          
  %mul = shl nsw i32 %N, 1
  br label %if.end

if.end:                                           
  %sum.1 = phi i32 [ %shl, %for.end ], [ %mul, %if.else ]
  ret i32 %sum.1
}






define i32 @emptyFrame() {
entry:
  ret i32 0
}




































define i32 @inlineAsm(i32 %cond, i32 %N) {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %for.preheader

for.preheader:
  tail call void asm "nop", ""()
  br label %for.body

for.body:                                         
  %i.03 = phi i32 [ %inc, %for.body ], [ 0, %for.preheader ]
  tail call void asm sideeffect "movs r4, #1", "~{r4}"()
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.exit, label %for.body

for.exit:
  tail call void asm "nop", ""()
  br label %if.end

if.else:                                          
  %mul = shl nsw i32 %N, 1
  br label %if.end

if.end:                                           
  %sum.0 = phi i32 [ %mul, %if.else ], [ 0, %for.exit ]
  ret i32 %sum.0
}













































define i32 @callVariadicFunc(i32 %cond, i32 %N) {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  %call = tail call i32 (i32, ...) @someVariadicFunc(i32 %N, i32 %N, i32 %N, i32 %N, i32 %N, i32 %N, i32 %N)
  %shl = shl i32 %call, 3
  br label %if.end

if.else:                                          
  %mul = shl nsw i32 %N, 1
  br label %if.end

if.end:                                           
  %sum.0 = phi i32 [ %shl, %if.then ], [ %mul, %if.else ]
  ret i32 %sum.0
}

declare i32 @someVariadicFunc(i32, ...)
























define i32 @noreturn(i8 signext %bad_thing) {
entry:
  %tobool = icmp eq i8 %bad_thing, 0
  br i1 %tobool, label %if.end, label %if.abort

if.abort:
  %call = tail call i32 asm sideeffect "movs $0, #1", "=r,~{r4}"()
  tail call void @abort() #0
  unreachable

if.end:
  ret i32 42
}

declare void @abort() #0

attributes #0 = { noreturn nounwind }
