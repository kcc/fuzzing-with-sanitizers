

target datalayout = "E-p:32:32"
target triple = "powerpc-apple-darwin8.7.0"
	%struct.pat_list = type { i32, %struct.pat_list* }
@JUMP = external global i32		
@old_D_pat = external global [16 x i8]		

define void @asearch1(i32 %D) {
entry:
	%tmp80 = icmp ult i32 0, %D		
	br i1 %tmp80, label %bb647.preheader, label %cond_true81.preheader
cond_true81.preheader:		
	ret void
bb647.preheader:		
	%tmp3.i = call i32 @read( )		
	%tmp6.i = add i32 %tmp3.i, 0		
	%tmp653 = icmp sgt i32 %tmp6.i, 0		
	br i1 %tmp653, label %cond_true654, label %UnifiedReturnBlock
cond_true612:		
	ret void
cond_next624:		
	ret void
cond_true654:		
	br i1 undef, label %cond_true612, label %cond_next624
UnifiedReturnBlock:		
	ret void
}

define void @bitap(i32 %D) {
entry:
	%tmp29 = icmp eq i32 0, 0		
	br i1 %tmp29, label %cond_next50, label %cond_next37
cond_next37:		
	ret void
cond_next50:		
	%tmp52 = icmp sgt i32 %D, 0		
	br i1 %tmp52, label %cond_true53, label %cond_next71
cond_true53:		
	%tmp54 = load i32, i32* @JUMP		
	%tmp55 = icmp eq i32 %tmp54, 1		
	br i1 %tmp55, label %cond_true56, label %cond_next63
cond_true56:		
	%tmp57 = bitcast i32 %D to i32		
	call void @asearch1( i32 %tmp57 )
	ret void
cond_next63:		
	ret void
cond_next71:		
	ret void
}

declare i32 @read()

define void @initial_value() {
entry:
	ret void
}

define void @main() {
entry:
	br label %cond_next252
cond_next208:		
	%tmp229 = call i32 @atoi( )		
	br label %cond_next252
bb217:		
	ret void
cond_next252:		
	%D.0.0 = phi i32 [ 0, %entry ], [ %tmp229, %cond_next208 ]		
	%tmp254 = getelementptr i8*, i8** null, i32 1		
	%tmp256 = load i8*, i8** %tmp254		
	%tmp258 = load i8, i8* %tmp256		
	%tmp259 = icmp eq i8 %tmp258, 45		
	br i1 %tmp259, label %cond_true260, label %bb263
cond_true260:		
	%tmp205818 = icmp sgt i8 0, -1		
	br i1 %tmp205818, label %cond_next208, label %bb217
bb263:		
	%tmp265 = icmp eq i32 0, 0		
	br i1 %tmp265, label %cond_next276, label %cond_true266
cond_true266:		
	ret void
cond_next276:		
	%tmp278 = icmp eq i32 0, 0		
	br i1 %tmp278, label %cond_next298, label %cond_true279
cond_true279:		
	ret void
cond_next298:		
	call void @bitap( i32 %D.0.0 )
	ret void
}

declare i32 @atoi()

define void @subset_pset() {
entry:
	ret void
}

define void @strcmp() {
entry:
	ret void
}
