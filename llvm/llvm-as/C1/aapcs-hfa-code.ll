


target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"

define arm_aapcs_vfpcc void @test_1float({ float } %a) {
  call arm_aapcs_vfpcc void @test_1float({ float } { float 1.0 })
  ret void








}

define arm_aapcs_vfpcc void @test_2float({ float, float } %a) {
  call arm_aapcs_vfpcc void @test_2float({ float, float } { float 1.0, float 2.0 })
  ret void










}

define arm_aapcs_vfpcc void @test_3float({ float, float, float } %a) {
  call arm_aapcs_vfpcc void @test_3float({ float, float, float } { float 1.0, float 2.0, float 3.0 })
  ret void












}

define arm_aapcs_vfpcc void @test_1double({ double } %a) {











  call arm_aapcs_vfpcc void @test_1double({ double } { double 1.0 })
  ret void
}



define arm_aapcs_vfpcc void @test_1double_nosplit([4 x float], [4 x double], [3 x float], double %a) {













  call arm_aapcs_vfpcc void @test_1double_nosplit([4 x float] undef, [4 x double] undef, [3 x float] undef, double 1.0)
  ret void
}



define arm_aapcs_vfpcc void @test_1double_misaligned([4 x double], [4 x double], float, double) {
  call arm_aapcs_vfpcc void @test_1double_misaligned([4 x double] undef, [4 x double] undef, float undef, double 1.0)














  ret void
}
