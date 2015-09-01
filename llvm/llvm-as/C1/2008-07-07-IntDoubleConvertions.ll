

define double @int2fp(i32 %a) nounwind {
entry:


	sitofp i32 %a to double		
	ret double %0
}

define double @uint2double(i32 %a) nounwind {
entry:


	uitofp i32 %a to double		
	ret double %0
}

define i32 @double2int(double %a) nounwind {
entry:


  fptosi double %a to i32   
  ret i32 %0
}

define i32 @double2uint(double %a) nounwind {
entry:


  fptoui double %a to i32   
  ret i32 %0
}

