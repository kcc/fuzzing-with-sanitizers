

	%struct._cpp_strbuf = type { i8*, i32, i32 }
	%struct.cpp_string = type { i32, i8* }

declare fastcc void @emit_numeric_escape(i32, i32, %struct._cpp_strbuf*, i32) nounwind 

define i32 @cpp_interpret_string(i32 %pfile, %struct.cpp_string* %from, i32 %wide) nounwind  {
entry:
	%tmp61 = load i32, i32* null, align 4		
	%toBool = icmp eq i32 %wide, 0		
	%iftmp.87.0 = select i1 %toBool, i32 %tmp61, i32 0		
	%tmp69 = icmp ult i32 %iftmp.87.0, 33		
	%min = select i1 %tmp69, i32 %iftmp.87.0, i32 32		
	%tmp71 = icmp ugt i32 %min, 31		
	br i1 %tmp71, label %bb79, label %bb75
bb75:		
	ret i32 0
bb79:		
	br i1 %toBool, label %bb103, label %bb94
bb94:		
	br i1 false, label %bb729, label %bb130.preheader
bb103:		
	ret i32 0
bb130.preheader:		
	%tmp134 = getelementptr %struct.cpp_string, %struct.cpp_string* %from, i32 0, i32 1		
	ret i32 0
bb729:		
	call fastcc void @emit_numeric_escape( i32 %pfile, i32 0, %struct._cpp_strbuf* null, i32 %wide ) nounwind 
	ret i32 1
}
