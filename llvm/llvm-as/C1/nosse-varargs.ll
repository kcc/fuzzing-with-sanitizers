


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
	%struct.__va_list_tag = type { i32, i32, i8*, i8* }



define i32 @foo(float %a, i8* nocapture %fmt, ...) nounwind {
entry:
	%ap = alloca [1 x %struct.__va_list_tag], align 8		
	%ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*		
	call void @llvm.va_start(i8* %ap12)
	%0 = getelementptr [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0		
	%1 = load i32, i32* %0, align 8		
	%2 = icmp ult i32 %1, 48		
	br i1 %2, label %bb, label %bb3

bb:		
	%3 = getelementptr [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3		
	%4 = load i8*, i8** %3, align 8		
	%5 = inttoptr i32 %1 to i8*		
	%6 = ptrtoint i8* %5 to i64		
	%ctg2 = getelementptr i8, i8* %4, i64 %6		
	%7 = add i32 %1, 8		
	store i32 %7, i32* %0, align 8
	br label %bb4

bb3:		
	%8 = getelementptr [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2		
	%9 = load i8*, i8** %8, align 8		
	%10 = getelementptr i8, i8* %9, i64 8		
	store i8* %10, i8** %8, align 8
	br label %bb4

bb4:		
	%addr.0.0 = phi i8* [ %ctg2, %bb ], [ %9, %bb3 ]		
	%11 = bitcast i8* %addr.0.0 to i32*		
	%12 = load i32, i32* %11, align 4		
	call void @llvm.va_end(i8* %ap12)
	ret i32 %12
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind
