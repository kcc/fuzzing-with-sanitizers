









declare fastcc void @force_register(double %d0, double %d1, double %d2, double %d3, double %d4) 

define void @test_vldm(double* %x, double * %y) {
entry:
  %addr1 = getelementptr double, double * %x, i32 1
  %addr2 = getelementptr double, double * %x, i32 2
  %addr3 = getelementptr double, double * %x, i32 3
  %d0 = load double , double * %y
  %d1 = load double , double * %x
  %d2 = load double , double * %addr1
  %d3 = load double , double * %addr2
  %d4 = load double , double * %addr3
  
  
  
  
  call fastcc void @force_register(double %d0, double %d1, double %d2, double %d3, double %d4)
  ret void
}
