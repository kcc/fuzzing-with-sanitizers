


%0 = type { float, float, float, float }
%pln = type { %vec, float }
%vec = type { [4 x float] }

define arm_aapcs_vfpcc float @aaa(%vec* nocapture %ustart, %vec* nocapture %udir, %vec* nocapture %vstart, %vec* nocapture %vdir, %vec* %upoint, %vec* %vpoint) {
entry:
  br i1 undef, label %bb81, label %bb48

bb48:                                             
  %0 = call arm_aapcs_vfpcc  %0 @bbb(%pln* undef, %vec* %vstart, %vec* undef) nounwind 
  ret float 0.000000e+00

bb81:                                             
  ret float 0.000000e+00
}

declare arm_aapcs_vfpcc %0 @bbb(%pln* nocapture, %vec* nocapture, %vec* nocapture) nounwind
