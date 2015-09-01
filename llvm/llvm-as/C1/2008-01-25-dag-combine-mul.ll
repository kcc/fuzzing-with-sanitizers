


define i32 @f(i16* %pc) {
entry:
	%acc = alloca i64, align 8		
	%tmp97 = load i64, i64* %acc, align 8		
	%tmp98 = and i64 %tmp97, 4294967295		
	%tmp99 = load i64, i64* null, align 8		
	%tmp100 = and i64 %tmp99, 4294967295		
	%tmp101 = mul i64 %tmp98, %tmp100		
	%tmp103 = lshr i64 %tmp101, 0		
	%tmp104 = load i64, i64* %acc, align 8		
	%.cast105 = zext i32 32 to i64		
	%tmp106 = lshr i64 %tmp104, %.cast105		
	%tmp107 = load i64, i64* null, align 8		
	%tmp108 = and i64 %tmp107, 4294967295		
	%tmp109 = mul i64 %tmp106, %tmp108		
	%tmp112 = add i64 %tmp109, 0		
	%tmp116 = add i64 %tmp112, 0		
	%tmp117 = add i64 %tmp103, %tmp116		
	%tmp118 = load i64, i64* %acc, align 8		
	%tmp120 = lshr i64 %tmp118, 0		
	%tmp121 = load i64, i64* null, align 8		
	%tmp123 = lshr i64 %tmp121, 0		
	%tmp124 = mul i64 %tmp120, %tmp123		
	%tmp126 = shl i64 %tmp124, 0		
	%tmp127 = add i64 %tmp117, %tmp126		
	store i64 %tmp127, i64* %acc, align 8
	ret i32 0
}
