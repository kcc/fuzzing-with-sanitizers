




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"

%struct._i386_state = type { %union.anon }
%union.anon = type { [0 x i8] }

define void @i386_aam(%struct._i386_state* nocapture %cpustate) nounwind ssp {
entry:
  %call = tail call fastcc signext i8 @FETCH()    
  %rem = urem i8 0, %call                         
  store i8 %rem, i8* undef
  ret void
}

declare fastcc signext i8 @FETCH() nounwind readnone ssp
