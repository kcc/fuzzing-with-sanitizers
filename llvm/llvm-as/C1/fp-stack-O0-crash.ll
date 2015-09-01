


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin10"

define void @fn(x86_fp80 %x) nounwind ssp {
entry:
  %x.addr = alloca x86_fp80                       
  store x86_fp80 %x, x86_fp80* %x.addr
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        
  %tmp = load x86_fp80, x86_fp80* %x.addr                   
  %tmp1 = load x86_fp80, x86_fp80* %x.addr                  
  %cmp = fcmp oeq x86_fp80 %tmp, %tmp1            
  br i1 %cmp, label %if.then, label %if.end

cond.false:                                       
  %tmp2 = load x86_fp80, x86_fp80* %x.addr                  
  %tmp3 = load x86_fp80, x86_fp80* %x.addr                  
  %cmp4 = fcmp une x86_fp80 %tmp2, %tmp3          
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          
  br label %if.end

if.end:                                           
  ret void
}



define void @__m_rankmerge_MOD_dindexmerge_() nounwind {
entry:
  br label %"20"

"20":                                             
    %0 = phi double [ undef, %entry ], [ %0, %"23" ]
    %1 = phi double [ 0.000000e+00, %entry ], [ %2, %"23" ]
    br i1 undef, label %"21", label %"23"

"21":                                             
    ret void

"23":                                             
    %2 = select i1 undef, double %0, double %1
    br label %"20"
}
