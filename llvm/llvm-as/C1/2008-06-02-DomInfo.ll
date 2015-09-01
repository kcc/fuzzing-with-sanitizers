

target triple = "i386-pc-linux-gnu"

define i32 @func_3(i16 signext  %p_5, i16 signext  %p_6) nounwind  {
entry:
	%tmp3 = icmp eq i16 %p_5, 0		
	%tmp1314 = sext i16 %p_6 to i32		
	%tmp28 = icmp ugt i32 %tmp1314, 3		
	%bothcond = or i1 %tmp28, false		
	br label %bb
bb:		
	br i1 %tmp3, label %bb54, label %bb5
bb5:		
	br i1 %bothcond, label %bb54, label %bb31
bb31:		
	br label %bb54
bb54:		
	br i1 false, label %bb64, label %bb
bb64:		
	%tmp6566 = sext i16 %p_6 to i32		
	%tmp68 = tail call i32 (...) @func_18( i32 1, i32 %tmp6566, i32 1 ) nounwind 		
	ret i32 undef
}

declare i32 @func_18(...)
