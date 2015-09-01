

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

define fastcc void @DD_dump() nounwind uwtable ssp {
entry:
  br i1 undef, label %lor.lhs.false, label %if.end25

lor.lhs.false:                                    
  br i1 undef, label %if.end21, label %if.else

if.else:                                          
  br i1 undef, label %num_q.exit, label %while.body.i.preheader

while.body.i.preheader:                           
  br label %while.body.i

while.body.i:                                     
  switch i8 undef, label %if.end.i [
    i8 39, label %if.then.i
    i8 92, label %if.then.i
  ]

if.then.i:                                        
  br label %if.end.i

if.end.i:                                         
  br i1 undef, label %num_q.exit, label %while.body.i

num_q.exit:                                       
  unreachable

if.end21:                                         
  unreachable

if.end25:                                         
  ret void
}



define void @single_entry_phi(i32* %a, i32 *%b) {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:
  %inc10 = phi i32 [ 0, %entry ], [ %inc, %for.end ]
  br label %for.end

for.end:
  %malicious.phi = phi i32 [ 0, %for.cond1.preheader ]
  %inc = add nsw i32 %inc10, 1
  %tobool = icmp eq i32 %inc, 0
  br i1 %tobool, label %for.cond.for.end5, label %for.cond1.preheader

for.cond.for.end5:
  %and.lcssa = phi i32 [ %malicious.phi, %for.end ]
  store i32 %and.lcssa, i32* %a, align 4
  ret void
}
