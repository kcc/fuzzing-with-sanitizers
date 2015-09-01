

define i32 @_Z4funci(i32 %a) ssp {





entry:
  %a_addr = alloca i32                            
  %retval = alloca i32                            
  %0 = alloca i32                                 
  %"alloca point" = bitcast i32 0 to i32          
  store i32 %a, i32* %a_addr
  %1 = call i32 @_Z3barPi(i32* %a_addr)           
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4                      
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           
  %retval1 = load i32, i32* %retval                    
  ret i32 %retval1
}

declare i32 @_Z3barPi(i32*)
