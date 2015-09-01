

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

define void @foo() nounwind {
entry:
  %tmp6 = load x86_fp80, x86_fp80* undef                       
  %tmp15 = load x86_fp80, x86_fp80* undef                      
  %tmp24 = load x86_fp80, x86_fp80* undef                      
  br i1 undef, label %return, label %bb.nph

bb.nph:                                           
  %cmp139 = fcmp ogt x86_fp80 %tmp15, %tmp6          
  %maxdiag.0 = select i1 %cmp139, x86_fp80 %tmp15, x86_fp80 %tmp6 
  %cmp139.1 = fcmp ogt x86_fp80 %tmp24, %maxdiag.0   
  br i1 %cmp139.1, label %sw.bb372, label %return

sw.bb372:                                         
  ret void

return:                                           
  ret void
}

