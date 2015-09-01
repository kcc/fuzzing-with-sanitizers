


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin9.1.0"
	%struct.S2259 = type { <4 x i16>, i8, i64 }

define void @check2259va(i32 %z, ...) {
entry:
	br i1 false, label %bb5, label %return
bb5:		
	switch i32 0, label %bb155 [
		 i32 16, label %bb10
		 i32 17, label %bb118
		 i32 18, label %bb54
		 i32 32, label %bb118
		 i32 33, label %bb118
		 i32 36, label %bb118
	]
bb10:		
	ret void
bb54:		
	ret void
bb118:		
	%tmp125 = load i8*, i8** null, align 8		
	%tmp125126 = bitcast i8* %tmp125 to %struct.S2259*		
	%tmp128 = getelementptr %struct.S2259, %struct.S2259* %tmp125126, i32 0, i32 0		
	%tmp129 = load <4 x i16>, <4 x i16>* %tmp128, align 8		
	store <4 x i16> %tmp129, <4 x i16>* null, align 8
	ret void
bb155:		
	ret void
return:		
	ret void
}
