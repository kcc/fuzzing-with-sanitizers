

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1

declare arm_aapcs_vfpcc void @callee(i8*)

define arm_aapcs_vfpcc void @function() {
entry:
  call arm_aapcs_vfpcc void @callee(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  ret void
}




