
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @_ZN4llvm3sys17RunningOnValgrindEv() #0 {
entry:
  br i1 undef, label %if.then, label %if.end

if.then:                                          
  ret void

if.end:                                           
  %0 = call i64 asm sideeffect "mr 3,$1\0A\09mr 4,$2\0A\09rotldi 0,0,3  
  unreachable




}

attributes #0 = { nounwind }

