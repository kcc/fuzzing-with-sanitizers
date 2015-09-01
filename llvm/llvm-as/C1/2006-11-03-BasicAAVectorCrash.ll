
target datalayout = "E-p:32:32"
target triple = "powerpc-apple-darwin8.7.0"

define void @glgRunProcessor() {
entry:
	br i1 false, label %bb2037.i, label %cond_true.i18

cond_true.i18:		
	ret void

bb205.i:		
	switch i32 0, label %bb1013.i [
		 i32 14, label %bb239.i
		 i32 15, label %bb917.i
	]

bb239.i:		
	br i1 false, label %cond_false277.i, label %cond_true264.i

cond_true264.i:		
	ret void

cond_false277.i:		
	%tmp1062.i = getelementptr [2 x <4 x i32>], [2 x <4 x i32>]* null, i32 0, i32 1		
	store <4 x i32> zeroinitializer, <4 x i32>* %tmp1062.i
	br i1 false, label %cond_true1032.i, label %cond_false1063.i85

bb917.i:		
	ret void

bb1013.i:		
	ret void

cond_true1032.i:		
	%tmp1187.i = getelementptr [2 x <4 x i32>], [2 x <4 x i32>]* null, i32 0, i32 0, i32 7		
	store i32 0, i32* %tmp1187.i
	br label %bb2037.i

cond_false1063.i85:		
	ret void

bb2037.i:		
	br i1 false, label %bb205.i, label %cond_next2042.i

cond_next2042.i:		
	ret void
}
