

define float @f1(double %x) {
entry:
	%tmp1 = fptrunc double %x to float		
	ret float %tmp1
}

define double @f2(float %x) {
entry:
	%tmp1 = fpext float %x to double		
	ret double %tmp1
}

define i32 @f3(float %x) {
entry:
	%tmp = fptosi float %x to i32		
	ret i32 %tmp
}

define i32 @f4(float %x) {
entry:
	%tmp = fptoui float %x to i32		
	ret i32 %tmp
}

define i32 @f5(double %x) {
entry:
	%tmp = fptosi double %x to i32		
	ret i32 %tmp
}

define i32 @f6(double %x) {
entry:
	%tmp = fptoui double %x to i32		
	ret i32 %tmp
}

define float @f7(i32 %a) {
entry:
	%tmp = sitofp i32 %a to float		
	ret float %tmp
}

define double @f8(i32 %a) {
entry:
	%tmp = sitofp i32 %a to double		
	ret double %tmp
}

define float @f9(i32 %a) {
entry:
	%tmp = uitofp i32 %a to float		
	ret float %tmp
}

define double @f10(i32 %a) {
entry:
	%tmp = uitofp i32 %a to double		
	ret double %tmp
}
