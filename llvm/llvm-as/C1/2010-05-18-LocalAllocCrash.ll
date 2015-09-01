




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64-n32"
target triple = "armv6-apple-darwin"

%struct.q = type { i32, i32 }

@.str = external constant [1 x i8]                

define void @yy(%struct.q* %qq) nounwind {
entry:
  %vla6 = alloca i8, i32 undef, align 1           
  %vla10 = alloca i8, i32 undef, align 1          
  %vla14 = alloca i8, i32 undef, align 1          
  %vla18 = alloca i8, i32 undef, align 1          
  %tmp21 = load i32, i32* undef                        
  %0 = mul i32 1, %tmp21                          
  %vla22 = alloca i8, i32 %0, align 1             
  call  void (...) @zz(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 2, i32 1)
  br i1 undef, label %if.then, label %if.end36

if.then:                                          
  %call = call  i32 (...) @x(%struct.q* undef, i8* undef, i8* %vla6, i8* %vla10, i32 undef) 
  %call35 = call  i32 (...) @x(%struct.q* undef, i8* %vla14, i8* %vla18, i8* %vla22, i32 undef) 
  unreachable

if.end36:                                         
  ret void
}

declare void @zz(...)

declare i32 @x(...)
