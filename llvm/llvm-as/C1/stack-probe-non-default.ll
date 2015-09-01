





declare dllimport arm_aapcs_vfpcc void @initialise(i8*)

define dllexport arm_aapcs_vfpcc signext i8 @function(i32 %offset) #0 {
entry:
  %buffer = alloca [4096 x i8], align 1
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call arm_aapcs_vfpcc void @initialise(i8* %0)
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 %offset
  %1 = load i8, i8* %arrayidx, align 1
  ret i8 %1
}

attributes #0 = { "stack-probe-size"="8096" }








