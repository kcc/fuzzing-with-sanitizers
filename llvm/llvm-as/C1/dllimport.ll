



@var = external dllimport global i32
@ext = external global i32
declare dllimport arm_aapcs_vfpcc i32 @external()
declare arm_aapcs_vfpcc i32 @internal()

define arm_aapcs_vfpcc i32 @get_var() {
  %1 = load i32, i32* @var, align 4
  ret i32 %1
}








define arm_aapcs_vfpcc i32 @get_ext() {
  %1 = load i32, i32* @ext, align 4
  ret i32 %1
}







define arm_aapcs_vfpcc i32* @get_var_pointer() {
  ret i32* @var
}







define arm_aapcs_vfpcc i32 @call_external() {
  %call = tail call arm_aapcs_vfpcc i32 @external()
  ret i32 %call
}







define arm_aapcs_vfpcc i32 @call_internal() {
  %call = tail call arm_aapcs_vfpcc i32 @internal()
  ret i32 %call
}




