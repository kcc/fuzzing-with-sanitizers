


declare double @llvm.AMDGPU.trig.preop.f64(double, i32) nounwind readnone







define void @test_trig_preop_f64(double addrspace(1)* %out, double addrspace(1)* %aptr, i32 addrspace(1)* %bptr) nounwind {
  %a = load double, double addrspace(1)* %aptr, align 8
  %b = load i32, i32 addrspace(1)* %bptr, align 4
  %result = call double @llvm.AMDGPU.trig.preop.f64(double %a, i32 %b) nounwind readnone
  store double %result, double addrspace(1)* %out, align 8
  ret void
}






define void @test_trig_preop_f64_imm_segment(double addrspace(1)* %out, double addrspace(1)* %aptr) nounwind {
  %a = load double, double addrspace(1)* %aptr, align 8
  %result = call double @llvm.AMDGPU.trig.preop.f64(double %a, i32 7) nounwind readnone
  store double %result, double addrspace(1)* %out, align 8
  ret void
}
