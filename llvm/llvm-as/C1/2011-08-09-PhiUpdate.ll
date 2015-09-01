




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-macosx10.6.8"

declare i1 @check() nounwind
declare i32 @getval() nounwind









define i32 @foo() uwtable ssp align 2 {
entry:
  br i1 undef, label %return, label %if.end

if.end:                                           
  %call2 = call i32 @getval()
  br label %do.body

do.body:                                          
  %call6 = call i32 @bar()
  %cmp = icmp ne i32 %call6, 0
  br i1 %cmp, label %land.lhs.true, label %do.cond

land.lhs.true:                                    
  %call10 = call i32 @getval()
  %cmp11 = icmp eq i32 0, %call10
  br i1 %cmp11, label %return, label %do.cond

do.cond:                                          
  %cmp18 = icmp sle i32 0, %call2
  br i1 %cmp18, label %do.body, label %return

return:                                           
  %retval.0 = phi i32 [ 0, %entry ], [ %call6, %land.lhs.true ], [ 0, %do.cond ]
  ret i32 %retval.0
}

define linkonce_odr i32 @bar() nounwind uwtable ssp align 2 {
entry:
  br i1 undef, label %land.lhs.true, label %cond.end

land.lhs.true:                                    
  %cmp4 = call zeroext i1 @check()
  br i1 %cmp4, label %cond.true, label %cond.end

cond.true:                                        
  %tmp7 = call i32 @getval()
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ %tmp7, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %cond
}
