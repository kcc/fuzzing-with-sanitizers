





target datalayout = "e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:32:32-f64:64:64-f32:32:32-a0:0-n32"
target triple = "hexagon-unknown-linux-gnu"

define void @foo() nounwind {
entry:
  br label %for.body

for.body:                                         
  br i1 undef, label %for.end, label %for.body

for.end:                                          
  br label %for.body71

for.body71:                                       
  br i1 undef, label %for.end96, label %for.body71

for.end96:                                        
  switch i32 undef, label %sw.epilog [
    i32 1, label %for.cond375.preheader
    i32 8, label %for.cond591
  ]

for.cond375.preheader:                            
  br label %polly.loop_header228

for.cond591:                                      
  br label %for.body664

for.body664:                                      
  br i1 undef, label %for.end670, label %for.body664

for.end670:                                       
  br label %sw.epilog

sw.epilog:                                        
  ret void

polly.loop_header228:                             
  %_p_splat_one = load <1 x i16>, <1 x i16>* undef, align 8
  %_p_splat = shufflevector <1 x i16> %_p_splat_one, <1 x i16> %_p_splat_one, <4 x i32> zeroinitializer
  %0 = trunc <4 x i16> %_p_splat to <4 x i8>
  store <4 x i8> %0, <4 x i8>* undef, align 8
  br label %polly.loop_header228
}
