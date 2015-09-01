




@.str = private constant [12 x i8] c"x + y = %i\0A\00", align 1 

define i32 @main() nounwind {
entry:






















  %retval = alloca i32                            
  %"%ebx" = alloca i32                            
  %"%eax" = alloca i32                            
  %result = alloca i32                            
  %y = alloca i32                                 
  %x = alloca i32                                 
  %0 = alloca i32                                 
  %"alloca point" = bitcast i32 0 to i32          
  store i32 1, i32* %x, align 4
  store i32 2, i32* %y, align 4
  call void asm sideeffect alignstack "# top of block", "~{dirflag},~{fpsr},~{flags},~{edi},~{esi},~{edx},~{ecx},~{eax}"() nounwind
  %asmtmp = call i32 asm sideeffect alignstack "movl $1, $0", "=={eax},*m,~{dirflag},~{fpsr},~{flags},~{memory}"(i32* %x) nounwind 
  store i32 %asmtmp, i32* %"%eax"
  %asmtmp1 = call i32 asm sideeffect alignstack "movl $1, $0", "=={ebx},*m,~{dirflag},~{fpsr},~{flags},~{memory}"(i32* %y) nounwind 
  store i32 %asmtmp1, i32* %"%ebx"
  %1 = call i32 asm "", "={bx}"() nounwind        
  %2 = call i32 asm "", "={ax}"() nounwind        
  %asmtmp2 = call i32 asm sideeffect alignstack "addl $1, $0", "=={eax},{ebx},{eax},~{dirflag},~{fpsr},~{flags},~{memory}"(i32 %1, i32 %2) nounwind 
  store i32 %asmtmp2, i32* %"%eax"
  %3 = call i32 asm "", "={ax}"() nounwind        
  call void asm sideeffect alignstack "movl $0, $1", "{eax},*m,~{dirflag},~{fpsr},~{flags},~{memory}"(i32 %3, i32* %result) nounwind
  %4 = load i32, i32* %result, align 4                 
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %4) nounwind 
  store i32 0, i32* %0, align 4
  %6 = load i32, i32* %0, align 4                      
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           
  %retval3 = load i32, i32* %retval                    
  ret i32 %retval3
}

declare i32 @printf(i8*, ...) nounwind
