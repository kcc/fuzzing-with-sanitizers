

target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-generic-generic"

define i16 @foo() nounwind readnone {
entry:
  %result = alloca i16, align 1                   
  store volatile i16 0, i16* %result
  %tmp = load volatile i16, i16* %result               
  ret i16 %tmp
}

define i16 @main() nounwind {
entry:
  br label %while.cond

while.cond:                                       
  %call = call i16 @bar() nounwind                
  %tobool = icmp eq i16 %call, 0                  
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        
  %result.i = alloca i16, align 1                 
  store volatile i16 0, i16* %result.i
  %tmp.i = load volatile i16, i16* %result.i           
  ret i16 0
}

declare i16 @bar()
