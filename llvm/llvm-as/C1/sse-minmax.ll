






















define double @ogt(double %x, double %y) nounwind {
  %c = fcmp ogt double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}










define double @olt(double %x, double %y) nounwind {
  %c = fcmp olt double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}












define double @ogt_inverse(double %x, double %y) nounwind {
  %c = fcmp ogt double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}












define double @olt_inverse(double %x, double %y) nounwind {
  %c = fcmp olt double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}









define double @oge(double %x, double %y) nounwind {
  %c = fcmp oge double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}







define double @ole(double %x, double %y) nounwind {
  %c = fcmp ole double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}










define double @oge_inverse(double %x, double %y) nounwind {
  %c = fcmp oge double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}










define double @ole_inverse(double %x, double %y) nounwind {
  %c = fcmp ole double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}













define double @ogt_x(double %x) nounwind {
  %c = fcmp ogt double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}













define double @olt_x(double %x) nounwind {
  %c = fcmp olt double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}















define double @ogt_inverse_x(double %x) nounwind {
  %c = fcmp ogt double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}















define double @olt_inverse_x(double %x) nounwind {
  %c = fcmp olt double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}












define double @oge_x(double %x) nounwind {
  %c = fcmp oge double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}












define double @ole_x(double %x) nounwind {
  %c = fcmp ole double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}













define double @oge_inverse_x(double %x) nounwind {
  %c = fcmp oge double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}












define double @ole_inverse_x(double %x) nounwind {
  %c = fcmp ole double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}









define double @ugt(double %x, double %y) nounwind {
  %c = fcmp ugt double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}









define double @ult(double %x, double %y) nounwind {
  %c = fcmp ult double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}










define double @ugt_inverse(double %x, double %y) nounwind {
  %c = fcmp ugt double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}










define double @ult_inverse(double %x, double %y) nounwind {
  %c = fcmp ult double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}











define double @uge(double %x, double %y) nounwind {
  %c = fcmp uge double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}











define double @ule(double %x, double %y) nounwind {
  %c = fcmp ule double %x, %y
  %d = select i1 %c, double %x, double %y
  ret double %d
}











define double @uge_inverse(double %x, double %y) nounwind {
  %c = fcmp uge double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}











define double @ule_inverse(double %x, double %y) nounwind {
  %c = fcmp ule double %x, %y
  %d = select i1 %c, double %y, double %x
  ret double %d
}












define double @ugt_x(double %x) nounwind {
  %c = fcmp ugt double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}












define double @ult_x(double %x) nounwind {
  %c = fcmp ult double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}













define double @ugt_inverse_x(double %x) nounwind {
  %c = fcmp ugt double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}













define double @ult_inverse_x(double %x) nounwind {
  %c = fcmp ult double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}














define double @uge_x(double %x) nounwind {
  %c = fcmp uge double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}














define double @ule_x(double %x) nounwind {
  %c = fcmp ule double %x, 0.000000e+00
  %d = select i1 %c, double %x, double 0.000000e+00
  ret double %d
}














define double @uge_inverse_x(double %x) nounwind {
  %c = fcmp uge double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}














define double @ule_inverse_x(double %x) nounwind {
  %c = fcmp ule double %x, 0.000000e+00
  %d = select i1 %c, double 0.000000e+00, double %x
  ret double %d
}










define double @ogt_y(double %x) nounwind {
  %c = fcmp ogt double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}










define double @olt_y(double %x) nounwind {
  %c = fcmp olt double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}














define double @ogt_inverse_y(double %x) nounwind {
  %c = fcmp ogt double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}














define double @olt_inverse_y(double %x) nounwind {
  %c = fcmp olt double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}









define double @oge_y(double %x) nounwind {
  %c = fcmp oge double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}









define double @ole_y(double %x) nounwind {
  %c = fcmp ole double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}











define double @oge_inverse_y(double %x) nounwind {
  %c = fcmp oge double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}











define double @ole_inverse_y(double %x) nounwind {
  %c = fcmp ole double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}









define double @ugt_y(double %x) nounwind {
  %c = fcmp ugt double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}









define double @ult_y(double %x) nounwind {
  %c = fcmp ult double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}











define double @ugt_inverse_y(double %x) nounwind {
  %c = fcmp ugt double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}











define double @ult_inverse_y(double %x) nounwind {
  %c = fcmp ult double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}












define double @uge_y(double %x) nounwind {
  %c = fcmp uge double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}












define double @ule_y(double %x) nounwind {
  %c = fcmp ule double %x, -0.000000e+00
  %d = select i1 %c, double %x, double -0.000000e+00
  ret double %d
}












define double @uge_inverse_y(double %x) nounwind {
  %c = fcmp uge double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}












define double @ule_inverse_y(double %x) nounwind {
  %c = fcmp ule double %x, -0.000000e+00
  %d = select i1 %c, double -0.000000e+00, double %x
  ret double %d
}















define double @clampTo3k_a(double %x) nounwind readnone {
entry:
  %0 = fcmp ogt double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}












define double @clampTo3k_b(double %x) nounwind readnone {
entry:
  %0 = fcmp uge double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}














define double @clampTo3k_c(double %x) nounwind readnone {
entry:
  %0 = fcmp olt double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}












define double @clampTo3k_d(double %x) nounwind readnone {
entry:
  %0 = fcmp ule double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}














define double @clampTo3k_e(double %x) nounwind readnone {
entry:
  %0 = fcmp olt double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}












define double @clampTo3k_f(double %x) nounwind readnone {
entry:
  %0 = fcmp ule double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}














define double @clampTo3k_g(double %x) nounwind readnone {
entry:
  %0 = fcmp ogt double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}












define double @clampTo3k_h(double %x) nounwind readnone {
entry:
  %0 = fcmp uge double %x, 3.000000e+03           
  %x_addr.0 = select i1 %0, double 3.000000e+03, double %x 
  ret double %x_addr.0
}




define <2 x double> @test_maxpd(<2 x double> %x, <2 x double> %y) nounwind {
  %max_is_x = fcmp oge <2 x double> %x, %y
  %max = select <2 x i1> %max_is_x, <2 x double> %x, <2 x double> %y
  ret <2 x double> %max
}




define <2 x double> @test_minpd(<2 x double> %x, <2 x double> %y) nounwind {
  %min_is_x = fcmp ole <2 x double> %x, %y
  %min = select <2 x i1> %min_is_x, <2 x double> %x, <2 x double> %y
  ret <2 x double> %min
}




define <4 x float> @test_maxps(<4 x float> %x, <4 x float> %y) nounwind {
  %max_is_x = fcmp oge <4 x float> %x, %y
  %max = select <4 x i1> %max_is_x, <4 x float> %x, <4 x float> %y
  ret <4 x float> %max
}




define <4 x float> @test_minps(<4 x float> %x, <4 x float> %y) nounwind {
  %min_is_x = fcmp ole <4 x float> %x, %y
  %min = select <4 x i1> %min_is_x, <4 x float> %x, <4 x float> %y
  ret <4 x float> %min
}




define <2 x float> @test_maxps_illegal_v2f32(<2 x float> %x, <2 x float> %y) nounwind {
  %max_is_x = fcmp oge <2 x float> %x, %y
  %max = select <2 x i1> %max_is_x, <2 x float> %x, <2 x float> %y
  ret <2 x float> %max
}




define <2 x float> @test_minps_illegal_v2f32(<2 x float> %x, <2 x float> %y) nounwind {
  %min_is_x = fcmp ole <2 x float> %x, %y
  %min = select <2 x i1> %min_is_x, <2 x float> %x, <2 x float> %y
  ret <2 x float> %min
}




define <3 x float> @test_maxps_illegal_v3f32(<3 x float> %x, <3 x float> %y) nounwind {
  %max_is_x = fcmp oge <3 x float> %x, %y
  %max = select <3 x i1> %max_is_x, <3 x float> %x, <3 x float> %y
  ret <3 x float> %max
}




define <3 x float> @test_minps_illegal_v3f32(<3 x float> %x, <3 x float> %y) nounwind {
  %min_is_x = fcmp ole <3 x float> %x, %y
  %min = select <3 x i1> %min_is_x, <3 x float> %x, <3 x float> %y
  ret <3 x float> %min
}
