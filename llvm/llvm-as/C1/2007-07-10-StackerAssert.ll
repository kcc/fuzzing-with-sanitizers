


@.str97 = external constant [56 x i8]		

declare void @PR_LogPrint(i8*, ...)

define i32 @_ZN13nsPrintEngine19SetupToPrintContentEP16nsIDeviceContextP12nsIDOMWindow() {
entry:
	br i1 false, label %cond_true122, label %cond_next453

cond_true122:		
	br i1 false, label %bb164, label %cond_true136

cond_true136:		
	ret i32 0

bb164:		
	br i1 false, label %bb383, label %cond_true354

cond_true354:		
	ret i32 0

bb383:		
	%tmp408 = load float, float* null		
	br i1 false, label %cond_true425, label %cond_next443

cond_true425:		
	%tmp430 = load float, float* null		
	%tmp432 = fsub float %tmp430, %tmp408		
	%tmp432433 = fpext float %tmp432 to double		
	%tmp434435 = fpext float %tmp408 to double		
	call void (i8*, ...) @PR_LogPrint( i8* getelementptr ([56 x i8], [56 x i8]* @.str97, i32 0, i32 0), double 0.000000e+00, double %tmp434435, double %tmp432433 )
	ret i32 0

cond_next443:		
	ret i32 0

cond_next453:		
	ret i32 0
}
