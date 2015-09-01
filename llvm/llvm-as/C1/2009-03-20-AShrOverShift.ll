


define i32 @foo2(i32 %val) nounwind {
entry:
	%shr = ashr i32 %val, 15		
	%shr4 = ashr i32 %shr, 17		
        ret i32 %shr4
 }
