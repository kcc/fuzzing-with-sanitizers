

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"









define void @foo(i32 %b, i32 %s) {

entry:


  %call = tail call zeroext i1 @cond(i32 0)
  br i1 %call, label %if.then, label %for.inc

if.then:                                          
  %mul = mul nsw i32 %b, %s

  tail call void @use(i32 %mul)
  br label %for.inc

for.inc:                                          
  %call.1 = tail call zeroext i1 @cond(i32 1)
  br i1 %call.1, label %if.then.1, label %for.inc.1

if.then.1:                                        
  %add.1 = add nsw i32 %b, 1
  %mul.1 = mul nsw i32 %add.1, %s

  tail call void @use(i32 %mul.1)
  br label %for.inc.1

for.inc.1:                                        
  %call.2 = tail call zeroext i1 @cond(i32 2)
  br i1 %call.2, label %if.then.2, label %for.inc.2

if.then.2:                                        
  %add.2 = add nsw i32 %b, 2
  %mul.2 = mul nsw i32 %add.2, %s

  tail call void @use(i32 %mul.2)
  br label %for.inc.2

for.inc.2:                                        
  %call.3 = tail call zeroext i1 @cond(i32 3)
  br i1 %call.3, label %if.then.3, label %for.inc.3

if.then.3:                                        
  %add.3 = add nsw i32 %b, 3
  %mul.3 = mul nsw i32 %add.3, %s

  tail call void @use(i32 %mul.3)
  br label %for.inc.3

for.inc.3:                                        
  ret void
}

declare zeroext i1 @cond(i32)

declare void @use(i32)

!nvvm.annotations = !{!0}

!0 = !{void (i32, i32)* @foo, !"kernel", i32 1}
