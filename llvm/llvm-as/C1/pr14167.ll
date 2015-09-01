
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-bgq-linux"

define void @test1() nounwind {


entry:
  br label %for.cond2.preheader

for.cond2.preheader:                              
  br i1 false, label %middle.block, label %vector.ph

vector.ph:                                        
  br label %vector.body

vector.body:                                      
  br i1 undef, label %middle.block.loopexit, label %vector.body

middle.block.loopexit:                            
  br label %middle.block

middle.block:                                     
  br i1 true, label %for.end, label %scalar.preheader

scalar.preheader:                                 
  br label %for.body4

for.body4:                                        
  %indvars.iv = phi i64 [ 16000, %scalar.preheader ], [ %indvars.iv.next, %for.body4 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, 16000
  br i1 %exitcond, label %for.body4, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  br i1 undef, label %for.cond2.preheader, label %for.end15

for.end15:                                        
  ret void
}
