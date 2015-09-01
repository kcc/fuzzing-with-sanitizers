






target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin10.0"

@g_14 = global i8 -6, align 1                     

declare i32 @func_16(i8 signext %p_19, i32 %p_20) nounwind

define i32 @func_35(i64 %p_38) nounwind ssp {
entry:
  %tmp = load i8, i8* @g_14                           
  %conv = zext i8 %tmp to i32                     
  %cmp = icmp sle i32 1, %conv                    
  %conv2 = zext i1 %cmp to i32                    
  %call = call i32 @func_16(i8 signext %tmp, i32 %conv2) ssp 
  ret i32 1
}
