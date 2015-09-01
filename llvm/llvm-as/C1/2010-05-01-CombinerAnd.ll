


target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:16:32-n8:16"
target triple = "msp430-elf"

define i16 @main() nounwind {
entry:
  br label %while.cond

while.cond:                                       
  br i1 undef, label %land.rhs, label %land.end

land.rhs:                                         
  br label %land.end

land.end:                                         
  %0 = phi i1 [ false, %while.cond ], [ undef, %land.rhs ] 
  br i1 %0, label %while.body, label %while.end

while.body:                                       
  %tmp4 = load i16, i16* undef                         
  br label %while.cond

while.end:                                        
  ret i16 undef
}
