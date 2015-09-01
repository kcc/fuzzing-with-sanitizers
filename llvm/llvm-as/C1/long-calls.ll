


declare arm_aapcs_vfpcc void @callee()

define arm_aapcs_vfpcc void @caller() nounwind {
entry:
  tail call void @callee()
  ret void
}








