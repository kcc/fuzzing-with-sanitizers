


define i32 @main() ssp {
entry:
  %retval = alloca i32, align 4                   
  %r = alloca i32, align 4                        
  store i32 0, i32* %retval
  %tmp = call x86_fp80 @llvm.powi.f80(x86_fp80 0xK3FFF8000000000000000, i32 -64) 
  %conv = fptosi x86_fp80 %tmp to i32             
  store i32 %conv, i32* %r
  %tmp1 = load i32, i32* %r                            
  %tobool = icmp ne i32 %tmp1, 0                  
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          
  call void @_Z1fv()
  br label %if.end

if.end:                                           
  %0 = load i32, i32* %retval                          
  ret i32 %0
}

declare x86_fp80 @llvm.powi.f80(x86_fp80, i32) nounwind readonly

declare void @_Z1fv()
