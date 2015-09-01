

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios"





































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
  br i1 %tobool, label %if.else, label %for.body

for.body:                                         
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sum.04 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %call = tail call i32 bitcast (i32 (...)* @something to i32 ()*)()
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
  br label %for.body

for.body:                                         
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %sum.03 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %call = tail call i32 bitcast (i32 (...)* @something to i32 ()*)()
  %add = add nsw i32 %call, %sum.03
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 %add
}










































define i32 @loopInfoSaveOutsideLoop(i32 %cond, i32 %N) {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %for.body

for.body:                                         
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sum.04 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %call = tail call i32 bitcast (i32 (...)* @something to i32 ()*)()
  %add = add nsw i32 %call, %sum.04
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  tail call void bitcast (void (...)* @somethingElse to void ()*)()
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
  tail call void bitcast (void (...)* @somethingElse to void ()*)()
  br label %for.body

for.body:                                         
  %i.05 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  %sum.04 = phi i32 [ 0, %if.then ], [ %add, %for.body ]
  %call = tail call i32 bitcast (i32 (...)* @something to i32 ()*)()
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






































define i32 @variadicFunc(i32 %cond, i32 %count, ...) #0 {
entry:
  %ap = alloca i8*, align 8
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %cmp6 = icmp sgt i32 %count, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %sum.07 = phi i32 [ %add, %for.body ], [ 0, %if.then ]
  %0 = va_arg i8** %ap, i32
  %add = add nsw i32 %sum.07, %0
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond = icmp eq i32 %inc, %count
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i32 [ 0, %if.then ], [ %add, %for.body ]
  call void @llvm.va_end(i8* %ap1)
  br label %if.end

if.else:                                          
  %mul = shl nsw i32 %count, 1
  br label %if.end

if.end:                                           
  %sum.1 = phi i32 [ %sum.0.lcssa, %for.end ], [ %mul, %if.else ]
  ret i32 %sum.1
}

declare void @llvm.va_start(i8*)

declare void @llvm.va_end(i8*)






























define i32 @inlineAsm(i32 %cond, i32 %N) {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.else, label %for.body

for.body:                                         
  %i.03 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void asm sideeffect "add x19, x19, #1", "~{x19}"()
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %if.end, label %for.body

if.else:                                          
  %mul = shl nsw i32 %N, 1
  br label %if.end

if.end:                                           
  %sum.0 = phi i32 [ %mul, %if.else ], [ 0, %for.body ]
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
  tail call void @abort() #0
  unreachable

if.end:
  ret i32 42
}

declare void @abort() #0

attributes #0 = { noreturn nounwind }











define void @infiniteloop() {
entry:
  br i1 undef, label %if.then, label %if.end

if.then:
  %ptr = alloca i32, i32 4
  br label %for.body

for.body:                                         
  %sum.03 = phi i32 [ 0, %if.then ], [ %add, %for.body ]
  %call = tail call i32 bitcast (i32 (...)* @something to i32 ()*)()
  %add = add nsw i32 %call, %sum.03
  store i32 %add, i32* %ptr
  br label %for.body

if.end:
  ret void
}
