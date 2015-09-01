









	%struct.indexentry = type { i32, i8*, i8*, i8*, i8*, i8* }

define i32 @_bfd_stab_section_find_nearest_line(i32 %offset, i1 %cond) nounwind  {
entry:
	%tmp910 = add i32 0, %offset		
	br i1 %cond, label %bb951, label %bb917

bb917:		
	ret i32 0

bb951:		
	%tmp955 = sdiv i32 %offset, 2		
	%tmp961 = getelementptr %struct.indexentry, %struct.indexentry* null, i32 %tmp955, i32 0		
	br i1 %cond, label %bb986, label %bb967

bb967:		
	ret i32 0

bb986:		
	%tmp993 = load i32, i32* %tmp961, align 4		
	%tmp995 = icmp ugt i32 %tmp993, %tmp910		
	%tmp1002 = add i32 %tmp955, 1		
	%low.0 = select i1 %tmp995, i32 0, i32 %tmp1002		
	%high.0 = select i1 %tmp995, i32 %tmp955, i32 0		
	%tmp1006 = icmp eq i32 %low.0, %high.0		
	br i1 %tmp1006, label %UnifiedReturnBlock, label %bb951

UnifiedReturnBlock:		
	ret i32 1
}
