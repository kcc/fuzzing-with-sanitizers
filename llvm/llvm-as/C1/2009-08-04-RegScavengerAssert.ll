


define i32 @file_read_actor(i32 %desc, i32 %page, i32 %offset, i32 %size) nounwind optsize {
entry:
	br i1 undef, label %fault_in_pages_writeable.exit, label %bb5.i

bb5.i:		
	%asmtmp.i = tail call i32 asm sideeffect "1:\09strbt\09$1,[$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.previous\0A\09.section __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.previous", "=r,r,r,i,0,~{cc}"(i8 0, i32 undef, i32 -14, i32 0) nounwind		
	br label %fault_in_pages_writeable.exit

fault_in_pages_writeable.exit:		
	%0 = phi i32 [ 0, %entry ], [ %asmtmp.i, %bb5.i ]		
	%1 = icmp eq i32 %0, 0		
	br i1 %1, label %bb2, label %bb3

bb2:		
	unreachable

bb3:		
	%2 = tail call  i32 @__copy_to_user(i8* undef, i8* undef, i32 undef) nounwind		
	unreachable
}

declare i32 @__copy_to_user(i8*, i8*, i32)
