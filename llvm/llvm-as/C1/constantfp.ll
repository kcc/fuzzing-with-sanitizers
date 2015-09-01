



define arm_aapcs_vfpcc float @test_vmov_f32() {




  ret float 1.0
}

define arm_aapcs_vfpcc float @test_vmov_imm() {





  ret float 0.0
}

define arm_aapcs_vfpcc float @test_vmvn_imm() {





  ret float 8589934080.0
}

define arm_aapcs_vfpcc double @test_vmov_f64() {






  ret double 1.0
}

define arm_aapcs_vfpcc double @test_vmov_double_imm() {





  ret double 0.0
}

define arm_aapcs_vfpcc double @test_vmvn_double_imm() {





  ret double 0x4fffffff4fffffff
}



define arm_aapcs_vfpcc double @test_notvmvn_double_imm() {





  ret double 0x4fffffffffffffff
}
