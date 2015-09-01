








target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "x86_64-apple-macosx"







































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
  %call = tail call i32 asm "movl $$1, $0", "=r,~{ebx}"()
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
  %call = tail call i32 asm "movl $$1, $0", "=r,~{ebx}"()
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
  %call = tail call i32 asm "movl $$1, $0", "=r,~{ebx}"()
  %add = add nsw i32 %call, %sum.04
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  tail call void asm "nop", "~{ebx}"()
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
  tail call void asm "nop", "~{ebx}"()
  br label %for.body

for.body:                                         
  %i.05 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  %sum.04 = phi i32 [ 0, %if.then ], [ %add, %for.body ]
  %call = tail call i32 asm "movl $$1, $0", "=r,~{ebx}"()
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
  tail call void asm "addl $$1, %ebx", "~{ebx}"()
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


%struct.temp_slot = type { %struct.temp_slot*, %struct.rtx_def*, %struct.rtx_def*, i32, i64, %union.tree_node*, %union.tree_node*, i8, i8, i32, i32, i64, i64 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }

declare hidden fastcc %struct.temp_slot* @find_temp_slot_from_address(%struct.rtx_def* readonly)










































define void @useLEA(%struct.rtx_def* readonly %x) {
entry:
  %cmp = icmp eq %struct.rtx_def* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           
  %tmp = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0
  %bf.load = load i32, i32* %tmp, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 66
  br i1 %cmp1, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %tmp1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tmp2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tmp1, i64 0, i32 0
  %bf.load2 = load i32, i32* %tmp2, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  switch i32 %bf.clear3, label %if.end.55 [
    i32 67, label %cleanup
    i32 68, label %cleanup
    i32 54, label %cleanup
    i32 55, label %cleanup
    i32 58, label %cleanup
    i32 134, label %cleanup
    i32 56, label %cleanup
    i32 140, label %cleanup
  ]

if.end.55:                                        
  %call = tail call fastcc %struct.temp_slot* @find_temp_slot_from_address(%struct.rtx_def* %tmp1) #2
  %cmp59 = icmp eq %struct.temp_slot* %call, null
  br i1 %cmp59, label %cleanup, label %if.then.60

if.then.60:                                       
  %addr_taken = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %call, i64 0, i32 8
  store i8 1, i8* %addr_taken, align 1
  br label %cleanup

cleanup:                                          
  ret void
}























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
  %call = tail call i32 asm "movl $$1, $0", "=r,~{ebx}"()
  %add = add nsw i32 %call, %sum.03
  store i32 %add, i32* %ptr
  br label %for.body

if.end:
  ret void
}
