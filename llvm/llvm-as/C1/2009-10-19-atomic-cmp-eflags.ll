


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

@.str76843 = external constant [45 x i8]          
@__profiling_callsite_timestamps_live = external global [1216 x i64] 

define i32 @cl_init(i32 %initoptions) nounwind {
entry:
  %retval.i = alloca i32                          
  %retval = alloca i32                            
  %initoptions.addr = alloca i32                  
  tail call void asm sideeffect "cpuid", "~{ax},~{bx},~{cx},~{dx},~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind
  %0 = tail call i64 @llvm.readcyclecounter() nounwind 
  store i32 %initoptions, i32* %initoptions.addr
  %1 = bitcast i32* %initoptions.addr to { }*     
  call void asm sideeffect "cpuid", "~{ax},~{bx},~{cx},~{dx},~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind
  %2 = call i64 @llvm.readcyclecounter() nounwind 
  %call.i = call i32 @lt_dlinit() nounwind        
  %tobool.i = icmp ne i32 %call.i, 0              
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        
  %call1.i = call i32 @warn_dlerror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str76843, i32 0, i32 0)) nounwind 
  store i32 -1, i32* %retval.i
  br label %lt_init.exit

if.end.i:                                         
  store i32 0, i32* %retval.i
  br label %lt_init.exit

lt_init.exit:                                     
  %3 = load i32, i32* %retval.i                        
  call void asm sideeffect "cpuid", "~{ax},~{bx},~{cx},~{dx},~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind
  %4 = call i64 @llvm.readcyclecounter() nounwind 
  %5 = sub i64 %4, %2                             
  %6 = atomicrmw add i64* getelementptr inbounds ([1216 x i64], [1216 x i64]* @__profiling_callsite_timestamps_live, i32 0, i32 51), i64 %5 monotonic



  %cmp = icmp eq i32 %3, 0                        
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  call void @cli_rarload()
  br label %if.end

if.end:                                           
  store i32 0, i32* %retval
  %7 = load i32, i32* %retval                          
  tail call void asm sideeffect "cpuid", "~{ax},~{bx},~{cx},~{dx},~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind
  %8 = tail call i64 @llvm.readcyclecounter() nounwind 
  %9 = sub i64 %8, %0                             
  %10 = atomicrmw add i64* getelementptr inbounds ([1216 x i64], [1216 x i64]* @__profiling_callsite_timestamps_live, i32 0, i32 50), i64 %9 monotonic
  ret i32 %7
}

declare void @cli_rarload() nounwind

declare i32 @lt_dlinit()

declare i32 @warn_dlerror(i8*) nounwind

declare i64 @llvm.readcyclecounter() nounwind
