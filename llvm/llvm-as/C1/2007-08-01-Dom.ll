


      	%struct.QBasicAtomic = type { i32 }

define void @_ZNK5QDate9addMonthsEi(%struct.QBasicAtomic* sret  %agg.result, %struct.QBasicAtomic* %this, i32 %nmonths) {
entry:
	br label %cond_true90

bb16:		
	br i1 false, label %bb93, label %cond_true90

bb45:		
	br i1 false, label %bb53, label %bb58

bb53:		
	br i1 false, label %bb93, label %cond_true90

bb58:		
	store i32 0, i32* null, align 4
	br i1 false, label %cond_true90, label %bb93

cond_true90:		
	%nmonths_addr.016.1 = phi i32 [ %nmonths, %entry ], [ 0, %bb16 ], [ 0, %bb53 ], [ %nmonths_addr.016.1, %bb58 ]		
	%tmp14 = icmp slt i32 %nmonths_addr.016.1, -11		
	br i1 %tmp14, label %bb16, label %bb45

bb93:		
	ret void
}
