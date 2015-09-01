

define zeroext i8 @t(double %x) nounwind readnone {
entry:
	%0 = fptosi double %x to i32		
	%1 = sitofp i32 %0 to double		
	%2 = fcmp oeq double %1, %x		
	%retval12 = zext i1 %2 to i8		

	ret i8 %retval12
}

define zeroext i8 @u(double %x) nounwind readnone {
entry:
	%0 = fptosi double %x to i32		
	%1 = sitofp i32 %0 to double		
	%2 = fcmp une double %1, %x		
	%retval12 = zext i1 %2 to i8		

	ret i8 %retval12
}
