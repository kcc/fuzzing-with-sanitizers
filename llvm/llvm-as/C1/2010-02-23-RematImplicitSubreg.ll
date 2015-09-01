









target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"

define noalias i8* @foo() nounwind ssp {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  %tmp6 = load i8, i8* undef, align 2                 
  %conv11 = sext i8 %tmp6 to i64                  
  %cmp15 = icmp slt i64 %conv11, undef            
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          
  %conv18 = sext i8 %tmp6 to i32                  
  %call = tail call i32 (...) @invalid(i32 0, i32 0, i32 %conv18) nounwind 
  br label %if.end

if.end:                                           
  %index.0 = phi i8 [ 0, %if.then ], [ %tmp6, %for.body ] 
  store i8 %index.0, i8* undef
  %tmp24 = load i8, i8* undef                         
  br i1 undef, label %if.end40, label %if.then36

if.then36:                                        
  %conv38 = sext i8 %tmp24 to i32                 
  %call39 = tail call i32 (...) @invalid(i32 0, i32 0, i32 %conv38) nounwind 
  br label %if.end40

if.end40:                                         
  %index.1 = phi i8 [ 0, %if.then36 ], [ %tmp24, %if.end ] 
  store i8 %index.1, i8* undef
  br i1 false, label %for.body, label %for.end

for.end:                                          
  ret i8* undef
}

declare i32 @invalid(...)
