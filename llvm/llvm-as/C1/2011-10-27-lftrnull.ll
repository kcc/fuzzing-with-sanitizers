


target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:32:64-v128:32:128-a0:0:32-n32-S32"
target triple = "thumbv7-apple-darwin"




define void @test() nounwind {
entry:
  br label %while.cond

while.cond:
  br i1 undef, label %while.end, label %while.body

while.body:                                       
  br i1 undef, label %if.then165, label %while.cond

if.then165:                                       
  br i1 undef, label %while.cond, label %for.body.lr.ph.i81

for.body.lr.ph.i81:                               
  br label %for.body.i86

for.body.i86:                                     
  %cmp196.i = icmp ult i32 0, undef
  br i1 %cmp196.i, label %for.body21.lr.ph.i, label %for.end.i129

for.body21.lr.ph.i:                               
  br label %for.body21.i

for.body21.i:
  %destYPixelPtr.010.i = phi i8* [ null, %for.body21.lr.ph.i ], [ %incdec.ptr.i, %if.end.i126 ]
  %x.09.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %inc.i125, %if.end.i126 ]
  br i1 undef, label %if.end.i126, label %if.else.i124

if.else.i124:                                     
  store i8 undef, i8* %destYPixelPtr.010.i, align 1
  br label %if.end.i126

if.end.i126:                                      
  %incdec.ptr.i = getelementptr inbounds i8, i8* %destYPixelPtr.010.i, i32 1
  %inc.i125 = add i32 %x.09.i, 1
  %cmp19.i = icmp ult i32 %inc.i125, undef
  br i1 %cmp19.i, label %for.body21.i, label %for.end.i129

for.end.i129:                                     
  br i1 undef, label %for.body.i86, label %while.cond

while.end:                                        
  br label %bail

bail:                                             
  unreachable

return:                                           
  ret void
}
