

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define void @test0() nounwind {
if.end90.i.i:
  br label %while.body.i.i221.i

while.body.i.i221.i:                              
  br i1 undef, label %if.then.i.i224.i, label %while.cond.backedge.i.i.i

while.cond.backedge.i.i.i:                        
  br label %while.body.i.i221.i

if.then.i.i224.i:                                 
  switch i32 undef, label %for.cond.i.i226.i [
    i32 92, label %sw.bb.i.i225.i
    i32 34, label %sw.bb.i.i225.i
    i32 110, label %sw.bb21.i.i.i
  ]

sw.bb.i.i225.i:                                   
  unreachable

sw.bb21.i.i.i:                                    
  unreachable

for.cond.i.i226.i:                                
  %0 = phi i64 [ %tmp154.i.i.i, %for.body.i.i.i ], [ 0, %if.then.i.i224.i ] 
  %tmp154.i.i.i = add i64 %0, 1                   
  %i.0.i.i.i = trunc i64 %0 to i32                
  br i1 undef, label %land.rhs.i.i.i, label %for.end.i.i.i

land.rhs.i.i.i:                                   
  br i1 undef, label %for.body.i.i.i, label %for.end.i.i.i

for.body.i.i.i:                                   
  br label %for.cond.i.i226.i

for.end.i.i.i:                                    
  %idx.ext.i.i.i = sext i32 %i.0.i.i.i to i64     
  %sub.ptr72.sum.i.i.i = xor i64 %idx.ext.i.i.i, -1 
  %pos.addr.1.sum155.i.i.i = add i64 %tmp154.i.i.i, %sub.ptr72.sum.i.i.i 
  %arrayidx76.i.i.i = getelementptr inbounds i8, i8* undef, i64 %pos.addr.1.sum155.i.i.i 
  br label %while.cond.backedge.i.i.i
}

define void @test1() nounwind {
entry:
  %t = shl i32 undef, undef                     
  %t9 = sub nsw i32 0, %t                     
  br label %outer

outer:                                             
  %i12 = phi i32 [ %t21, %bb18 ], [ 0, %entry ]  
  %i13 = phi i32 [ %t20, %bb18 ], [ 0, %entry ]  
  br label %inner

inner:                                             
  %t17 = phi i32 [ %i13, %outer ], [ undef, %inner ] 
  store i32 %t17, i32* undef
  br i1 undef, label %bb18, label %inner

bb18:                                             
  %t19 = add i32 %i13, %t9                 
  %t20 = add i32 %t19, %i12                 
  %t21 = add i32 %i12, 1                      
  br label %outer
}
