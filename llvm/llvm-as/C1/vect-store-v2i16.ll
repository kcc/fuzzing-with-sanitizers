


target datalayout = "e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:32:32-f64:64:64-f32:32:32-a0:0-n32"
target triple = "hexagon-unknown-linux-gnu"

define void @foobar() nounwind {
entry:
  br label %for.cond7.preheader.single_entry.i

for.cond7.preheader.single_entry.i:               
  %exitcond72.i = icmp eq i32 undef, 64
  br i1 %exitcond72.i, label %foo_32.exit, label %for.cond7.preheader.single_entry.i

foo_32.exit:                         
  br label %for.body.i428

for.body.i428:                                    
  br i1 undef, label %foo_12.exit, label %for.body.i428

foo_12.exit:                            
  br label %for.body.i.i

for.body.i.i:                                     
  br i1 undef, label %foo_14.exit, label %for.body.i.i

foo_14.exit:                         
  br label %for.body

for.body:                                         
  br i1 undef, label %for.end, label %for.body

for.end:                                          
  %storemerge294 = select i1 undef, i32 32767, i32 undef
  %_p_splat_one386 = insertelement <1 x i32> undef, i32 %storemerge294, i32 0
  %_p_splat387 = shufflevector <1 x i32> %_p_splat_one386, <1 x i32> undef, <2 x i32> zeroinitializer
  br label %polly.loop_body377

polly.loop_after378:                              
  unreachable

polly.loop_body377:                               
  %_p_vec_full384 = load <2 x i16>, <2 x i16>* undef, align 4
  %0 = sext <2 x i16> %_p_vec_full384 to <2 x i32>
  %mulp_vec = mul <2 x i32> %0, %_p_splat387
  %shr100293p_vec = lshr <2 x i32> %mulp_vec, <i32 15, i32 15>
  %1 = trunc <2 x i32> %shr100293p_vec to <2 x i16>
  store <2 x i16> %1, <2 x i16>* undef, align 4
  br i1 undef, label %polly.loop_body377, label %polly.loop_after378
}

