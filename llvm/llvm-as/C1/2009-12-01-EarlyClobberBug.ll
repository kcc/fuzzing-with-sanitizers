


define void @t() nounwind ssp {
entry:



  %b = alloca i32                                 
  %a = alloca i32                                 
  %"alloca point" = bitcast i32 0 to i32          
  %0 = load i32, i32* %b, align 4                      
  %1 = load i32, i32* %b, align 4                      
  %asmtmp = call i32 asm "$0 = foo ($1, $2)", "=&{ax},%0,r,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) nounwind 
  store i32 %asmtmp, i32* %a
  br label %return

return:                                           
  ret void
}

define void @t2() nounwind ssp {
entry:






  %b = alloca i32                                 
  %a = alloca i32                                 
  %"alloca point" = bitcast i32 0 to i32          
  %0 = load i32, i32* %b, align 4                      
  %1 = load i32, i32* %b, align 4                      
  %asmtmp = call i32 asm "$0 = foo ($1, $2)", "=&r,%0,r,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) nounwind 
  store i32 %asmtmp, i32* %a
  br label %return

return:                                           
  ret void
}
