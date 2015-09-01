






define arm_aapcs_vfpcc i8 @function(i32 %sz, i32 %idx) {
entry:
  %vla = alloca i8, i32 %sz, align 1
  %arrayidx = getelementptr inbounds i8, i8* %vla, i32 %idx
  %0 = load volatile i8, i8* %arrayidx, align 1
  ret i8 %0
}

















