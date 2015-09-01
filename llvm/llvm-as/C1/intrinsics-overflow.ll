

define i32 @uadd_overflow(i32 %a, i32 %b) #0 {
  %sadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %a, i32 %b)
  %1 = extractvalue { i32, i1 } %sadd, 1
  %2 = zext i1 %1 to i32
  ret i32 %2

  
  
  
  
  
}


define i32 @sadd_overflow(i32 %a, i32 %b) #0 {
  %sadd = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %b)
  %1 = extractvalue { i32, i1 } %sadd, 1
  %2 = zext i1 %1 to i32
  ret i32 %2

  
  
  
  
  
}

define i32 @usub_overflow(i32 %a, i32 %b) #0 {
  %sadd = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %a, i32 %b)
  %1 = extractvalue { i32, i1 } %sadd, 1
  %2 = zext i1 %1 to i32
  ret i32 %2

  
  
  
  
}

define i32 @ssub_overflow(i32 %a, i32 %b) #0 {
  %sadd = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %a, i32 %b)
  %1 = extractvalue { i32, i1 } %sadd, 1
  %2 = zext i1 %1 to i32
  ret i32 %2

  
  
  
  
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4
