


declare double @llvm.maxnum.f64(double, double) nounwind readnone









define void @test_fmax3_f64(double addrspace(1)* %out, double addrspace(1)* %aptr) nounwind {
  %bptr = getelementptr double, double addrspace(1)* %aptr, i32 1
  %cptr = getelementptr double, double addrspace(1)* %aptr, i32 2
  %a = load double, double addrspace(1)* %aptr, align 8
  %b = load double, double addrspace(1)* %bptr, align 8
  %c = load double, double addrspace(1)* %cptr, align 8
  %f0 = call double @llvm.maxnum.f64(double %a, double %b) nounwind readnone
  %f1 = call double @llvm.maxnum.f64(double %f0, double %c) nounwind readnone
  store double %f1, double addrspace(1)* %out, align 8
  ret void
}
