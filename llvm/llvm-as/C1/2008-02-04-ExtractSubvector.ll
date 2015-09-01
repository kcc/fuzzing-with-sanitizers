

define i32 @main() nounwind  {
entry:
	br label %bb15

bb15:		
	%tmp21 = fadd <8 x double> zeroinitializer, zeroinitializer		
	br i1 false, label %bb30, label %bb15

bb30:		
	store <8 x double> %tmp21, <8 x double>* null, align 64
	ret i32 0
}
