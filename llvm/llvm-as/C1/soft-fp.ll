




%struct.__va_list_tag = type { i32, i32, i8*, i8* }

define i32 @t1(i32 %a, ...) nounwind {
entry:
	%va = alloca [1 x %struct.__va_list_tag], align 8		
	%va12 = bitcast [1 x %struct.__va_list_tag]* %va to i8*		
	call void @llvm.va_start(i8* %va12)
	%va3 = getelementptr [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i64 0, i64 0		
	call void @bar(%struct.__va_list_tag* %va3) nounwind
	call void @llvm.va_end(i8* %va12)
	ret i32 undef
}

declare void @llvm.va_start(i8*) nounwind

declare void @bar(%struct.__va_list_tag*)

declare void @llvm.va_end(i8*) nounwind

define float @t2(float %a, float %b) nounwind readnone {
entry:
	%0 = fadd float %a, %b		
	ret float %0
}
