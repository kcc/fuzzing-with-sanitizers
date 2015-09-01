


define arm_aapcs_vfpcc i32 @sdiv32(i32 %divisor, i32 %divident) {
entry:
  %div = sdiv i32 %divident, %divisor
  ret i32 %div
}




define arm_aapcs_vfpcc i64 @sdiv64(i64 %divisor, i64 %divident) {
entry:
  %div = sdiv i64 %divident, %divisor
  ret i64 %div
}




define arm_aapcs_vfpcc i32 @udiv32(i32 %divisor, i32 %divident) {
entry:
  %div = udiv i32 %divident, %divisor
  ret i32 %div
}




define arm_aapcs_vfpcc i64 @udiv64(i64 %divisor, i64 %divident) {
entry:
  %div = udiv i64 %divident, %divisor
  ret i64 %div
}




define arm_aapcs_vfpcc i64 @stoi64(float %f) {
entry:
  %conv = fptosi float %f to i64
  ret i64 %conv
}




define arm_aapcs_vfpcc i64 @stou64(float %f) {
entry:
  %conv = fptoui float %f to i64
  ret i64 %conv
}




define arm_aapcs_vfpcc float @i64tos(i64 %i64) {
entry:
  %conv = sitofp i64 %i64 to float
  ret float %conv
}




define arm_aapcs_vfpcc float @u64tos(i64 %u64) {
entry:
  %conv = uitofp i64 %u64 to float
  ret float %conv
}




define arm_aapcs_vfpcc i64 @dtoi64(double %d) {
entry:
  %conv = fptosi double %d to i64
  ret i64 %conv
}




define arm_aapcs_vfpcc i64 @dtou64(double %d) {
entry:
  %conv = fptoui double %d to i64
  ret i64 %conv
}




define arm_aapcs_vfpcc double @i64tod(i64 %i64) {
entry:
  %conv = sitofp i64 %i64 to double
  ret double %conv
}




define arm_aapcs_vfpcc double @u64tod(i64 %i64) {
entry:
  %conv = uitofp i64 %i64 to double
  ret double %conv
}




