

@str3 = external constant [3 x i8]		

define i32 @stringSearch_Clib(i32 %count) {
entry:
	%ttmp25 = icmp sgt i32 %count, 0		
	br i1 %ttmp25, label %bb36.preheader, label %bb44

bb36.preheader:		
	%ttmp33 = icmp slt i32 0, 250		
	br label %bb36.outer

bb36.outer:		
	br i1 %ttmp33, label %bb.nph, label %bb41

bb.nph:		
	%ttmp8 = icmp eq i8* null, null		
	%ttmp6 = icmp eq i8* null, null		
	%tmp31 = call i32 @strcspn( i8* null, i8* getelementptr ([3 x i8], [3 x i8]* @str3, i64 0, i64 0) )		
	br i1 %ttmp8, label %cond_next, label %cond_true

cond_true:		
	ret i32 0

cond_next:		
	br i1 %ttmp6, label %cond_next28, label %cond_true20

cond_true20:		
	ret i32 0

cond_next28:		
	%tmp33 = add i32 %tmp31, 0		
	br label %bb41

bb41:		
	%c.2.lcssa = phi i32 [ 0, %bb36.outer ], [ %tmp33, %cond_next28 ]		
	br i1 false, label %bb36.outer, label %bb44

bb44:		
	%c.01.1 = phi i32 [ 0, %entry ], [ %c.2.lcssa, %bb41 ]		
	ret i32 %c.01.1
}

declare i32 @strcspn(i8*, i8*)
