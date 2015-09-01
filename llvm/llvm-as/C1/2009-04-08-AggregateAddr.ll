


define fastcc void @_D3foo3fooFAriZv({ i32, { double, double }* } %d_arg, i32 %x_arg) {
entry:
	%d = alloca { i32, { double, double }* }		
	%x = alloca i32		
	%b = alloca { double, double }		
	store { i32, { double, double }* } %d_arg, { i32, { double, double }* }* %d
	store i32 %x_arg, i32* %x
	%tmp = load i32, i32* %x		
	%tmp1 = getelementptr { i32, { double, double }* }, { i32, { double, double }* }* %d, i32 0, i32 1		
	%.ptr = load { double, double }*, { double, double }** %tmp1		
	%tmp2 = getelementptr { double, double }, { double, double }* %.ptr, i32 %tmp		
	%tmp3 = load { double, double }, { double, double }* %tmp2		
	store { double, double } %tmp3, { double, double }* %b
	ret void
}
