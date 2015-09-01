



target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128"
target triple = "powerpc-apple-darwin8"
	%struct.S2203 = type { %struct.u16qi }
	%struct.u16qi = type { <16 x i8> }
@s = weak global %struct.S2203 zeroinitializer		

define void @foo(i32 %x, ...) {
entry:


	%x_addr = alloca i32		
	%ap = alloca i8*		
	%ap.0 = alloca i8*		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %x, i32* %x_addr
	%ap1 = bitcast i8** %ap to i8*		
	call void @llvm.va_start( i8* %ap1 )
	%tmp = load i8*, i8** %ap, align 4		
	store i8* %tmp, i8** %ap.0, align 4
	%tmp2 = load i8*, i8** %ap.0, align 4		
	%tmp3 = getelementptr i8, i8* %tmp2, i64 16		
	store i8* %tmp3, i8** %ap, align 4
	%tmp4 = load i8*, i8** %ap.0, align 4		
	%tmp45 = bitcast i8* %tmp4 to %struct.S2203*		
	%tmp6 = getelementptr %struct.S2203, %struct.S2203* @s, i32 0, i32 0		
	%tmp7 = getelementptr %struct.S2203, %struct.S2203* %tmp45, i32 0, i32 0		
	%tmp8 = getelementptr %struct.u16qi, %struct.u16qi* %tmp6, i32 0, i32 0		
	%tmp9 = getelementptr %struct.u16qi, %struct.u16qi* %tmp7, i32 0, i32 0		
	%tmp10 = load <16 x i8>, <16 x i8>* %tmp9, align 4		




	store <16 x i8> %tmp10, <16 x i8>* %tmp8, align 4
	br label %return

return:		
	ret void
}

declare void @llvm.va_start(i8*) nounwind 
