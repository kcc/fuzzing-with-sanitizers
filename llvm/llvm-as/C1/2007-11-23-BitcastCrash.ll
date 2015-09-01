

target datalayout = "e-p:32:32-f64:32:64-i64:32:64-f80:32:32"

define void @FuncAt1938470480(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1) {
EntryBlock:
	br label %asmBlockAt738ab7f3

asmBlockAt738ab9b0:		
	%.lcssa6 = phi i64 [ %23, %asmBlockAt738ab7f3 ]		
	ret void

asmBlockAt738ab7f3:		
	%ebp95 = phi i32 [ 128, %EntryBlock ], [ %24, %asmBlockAt738ab7f3 ]		
	sub <4 x i16> zeroinitializer, zeroinitializer		
	bitcast <4 x i16> %22 to i64		
	add i32 %ebp95, -64		
	icmp ult i32 %ebp95, 64		
	br i1 %25, label %asmBlockAt738ab9b0, label %asmBlockAt738ab7f3
}
