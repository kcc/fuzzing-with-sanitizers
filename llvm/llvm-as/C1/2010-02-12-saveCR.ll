

target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128-n32"
target triple = "powerpc-apple-darwin9.6"

define void @foo() nounwind {
entry:












  %x = alloca [100000 x i8]                       
  %"alloca point" = bitcast i32 0 to i32          
  %x1 = bitcast [100000 x i8]* %x to i8*          
  call void @bar(i8* %x1) nounwind
  call void asm sideeffect "", "~{cr2},~{cr3}"() nounwind
  br label %return

return:                                           










  ret void
}

declare void @bar(i8*)
