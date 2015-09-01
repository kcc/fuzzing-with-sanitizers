


        %struct.vtable = type { i32 (...)** }
	%struct.array = type { %struct.impl, [256 x %struct.pair], [256 x %struct.pair], [256 x %struct.pair], [256 x %struct.pair], [256 x %struct.pair], [256 x %struct.pair] }
	%struct.impl = type { %struct.vtable, i8, %struct.impl*, i32, i32, i64, i64 }
	%struct.pair = type { i64, i64 }

define void @test() {
entry:
	%0 = load i32, i32* null, align 4		
	%1 = lshr i32 %0, 8		
	%2 = and i32 %1, 255		
	%3 = getelementptr %struct.array, %struct.array* null, i32 0, i32 3		
	%4 = getelementptr [256 x %struct.pair], [256 x %struct.pair]* %3, i32 0, i32 %2		
	%5 = getelementptr %struct.pair, %struct.pair* %4, i32 0, i32 1		
	%6 = load i64, i64* %5, align 4		
	%7 = xor i64 0, %6		
	%8 = xor i64 %7, 0		
	%9 = xor i64 %8, 0		
	store i64 %9, i64* null, align 8
	unreachable
}
