
@g_56 = external global i16		

define i32 @func_67(i32 %p_68, i8 signext  %p_69, i8 signext  %p_71) nounwind  {
entry:
	br label %bb
bb:		
	br label %bb3
bb3:		
	%bothcond = or i1 false, false		
	br i1 %bothcond, label %bb29, label %bb19
bb19:		
	br i1 false, label %bb36, label %bb29
bb29:		
	ret i32 0
bb36:		
	store i16 0, i16* @g_56, align 2
	br i1 false, label %bb44, label %bb3
bb44:		
	%tmp46 = load i16, i16* @g_56, align 2		
	br i1 false, label %bb, label %bb44
}
