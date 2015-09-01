

define i32 @t(i64 %byteStart, i32 %activeIndex) nounwind  {
entry:
	%tmp50 = load i32, i32* null, align 4		
	%tmp5051 = zext i32 %tmp50 to i64		
	%tmp53 = udiv i64 %byteStart, %tmp5051		
	%tmp5354 = trunc i64 %tmp53 to i32		
	%tmp62 = urem i64 %byteStart, %tmp5051		
	%tmp94 = add i32 0, 1		
	%tmp100 = urem i32 %tmp94, 0		
	%tmp108 = add i32 0, %activeIndex		
	%tmp110 = sub i32 %tmp108, 0		
	%tmp112 = urem i32 %tmp110, 0		
	%tmp122 = icmp ult i32 %tmp112, %tmp100		
	%iftmp.175.0 = select i1 %tmp122, i32 %tmp112, i32 %tmp100		
	%tmp119 = add i32 %tmp5354, 0		
	%tmp131 = add i32 %tmp119, %iftmp.175.0		
	%tmp131132 = zext i32 %tmp131 to i64		
	%tmp147 = mul i64 %tmp131132, %tmp5051		
	br i1 false, label %bb164, label %bb190
bb164:		
	%tmp171172 = and i64 %tmp62, 4294967295		
	%tmp173 = add i64 %tmp171172, %tmp147		
	ret i32 0
bb190:		
	ret i32 0
}
