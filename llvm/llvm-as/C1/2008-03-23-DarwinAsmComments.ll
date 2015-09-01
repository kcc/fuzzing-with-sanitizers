

	%struct.AGenericCall = type { %struct.AGenericManager*, %struct.ComponentParameters*, i32* }
	%struct.AGenericManager = type <{ i8 }>
	%struct.ComponentInstanceRecord = type opaque
	%struct.ComponentParameters = type { [1 x i64] }

define i32 @_ZN12AGenericCall10MapIDPtrAtEsRP23ComponentInstanceRecord(%struct.AGenericCall* %this, i16 signext  %param, %struct.ComponentInstanceRecord** %instance) {
entry:
	%tmp4 = icmp slt i16 %param, 0		
	br i1 %tmp4, label %cond_true, label %cond_next

cond_true:		
	%tmp1415 = shl i16 %param, 3		
	%tmp17 = getelementptr %struct.AGenericCall, %struct.AGenericCall* %this, i32 0, i32 1		
	%tmp18 = load %struct.ComponentParameters*, %struct.ComponentParameters** %tmp17, align 8		
	%tmp1920 = bitcast %struct.ComponentParameters* %tmp18 to i8*		
	%tmp212223 = sext i16 %tmp1415 to i64		
	%tmp24 = getelementptr i8, i8* %tmp1920, i64 %tmp212223		
	%tmp2425 = bitcast i8* %tmp24 to i64*		
	%tmp28 = load i64, i64* %tmp2425, align 8		
	%tmp2829 = inttoptr i64 %tmp28 to i32*		
	%tmp31 = getelementptr %struct.AGenericCall, %struct.AGenericCall* %this, i32 0, i32 2		
	store i32* %tmp2829, i32** %tmp31, align 8
	br label %cond_next

cond_next:		
	%tmp4243 = shl i16 %param, 3		
	%tmp46 = getelementptr %struct.AGenericCall, %struct.AGenericCall* %this, i32 0, i32 1		
	%tmp47 = load %struct.ComponentParameters*, %struct.ComponentParameters** %tmp46, align 8		
	%tmp4849 = bitcast %struct.ComponentParameters* %tmp47 to i8*		
	%tmp505152 = sext i16 %tmp4243 to i64		
	%tmp53 = getelementptr i8, i8* %tmp4849, i64 %tmp505152		
	%tmp5354 = bitcast i8* %tmp53 to i64*		
	%tmp58 = load i64, i64* %tmp5354, align 8		
	%tmp59 = icmp eq i64 %tmp58, 0		
	br i1 %tmp59, label %UnifiedReturnBlock, label %cond_true63

cond_true63:		
	%tmp65 = getelementptr %struct.AGenericCall, %struct.AGenericCall* %this, i32 0, i32 0		
	%tmp66 = load %struct.AGenericManager*, %struct.AGenericManager** %tmp65, align 8		
	%tmp69 = tail call i32 @_ZN15AGenericManager24DefaultComponentInstanceERP23ComponentInstanceRecord( %struct.AGenericManager* %tmp66, %struct.ComponentInstanceRecord** %instance )		
	ret i32 %tmp69

UnifiedReturnBlock:		
	ret i32 undef
}

declare i32 @_ZN15AGenericManager24DefaultComponentInstanceERP23ComponentInstanceRecord(%struct.AGenericManager*, %struct.ComponentInstanceRecord**)
