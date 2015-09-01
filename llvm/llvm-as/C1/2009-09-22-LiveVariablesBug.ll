



%bar = type { %foo, %foo }
%foo = type { <4 x float> }

declare arm_aapcs_vfpcc float @aaa(%foo* nocapture) nounwind readonly

declare arm_aapcs_vfpcc %bar* @bbb(%bar*, <4 x float>, <4 x float>) nounwind

define arm_aapcs_vfpcc void @ccc(i8* nocapture %pBuffer, i32 %numItems) nounwind {
entry:
  br i1 undef, label %return, label %bb.nph

bb.nph:                                           
  %0 = call arm_aapcs_vfpcc  %bar* @bbb(%bar* undef, <4 x float> undef, <4 x float> undef) nounwind 
  %1 = call arm_aapcs_vfpcc  float @aaa(%foo* undef) nounwind 
  unreachable

return:                                           
  ret void
}
