


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"
target triple = "i386-apple-darwin10.0.0"

%0 = type { i8*, i8*, i32 }

define i8* @func() nounwind ssp {
entry:
  %retval = alloca i8*, align 4                   
  %ret = alloca i8*, align 4                      
  %p = alloca i8*, align 4                        
  %t = alloca i32, align 4                        




  %0 = call %0 asm "mov    $$0xdeafbeef, $1\0A\09mov    $$0xcafebabe, $0\0A\09mov    $0, $2\0A\09", "=&r,=&r,=&{cx},~{dirflag},~{fpsr},~{flags}"() nounwind, !srcloc !0 
  %asmresult = extractvalue %0 %0, 0              
  %asmresult1 = extractvalue %0 %0, 1             
  %asmresult2 = extractvalue %0 %0, 2             
  store i8* %asmresult, i8** %ret
  store i8* %asmresult1, i8** %p
  store i32 %asmresult2, i32* %t
  %tmp = load i8*, i8** %ret                           
  store i8* %tmp, i8** %retval
  %1 = load i8*, i8** %retval                          
  ret i8* %1
}

!0 = !{i32 79}
