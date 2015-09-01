


define i32 @tstid() {
	%var0 = inttoptr i32 1 to i8*		
	%var2 = ptrtoint i8* %var0 to i32		
	ret i32 %var2
}
