

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
	%struct.Hash_Key = type { [4 x i32], i32 }
@g_flipV_hashkey = external global %struct.Hash_Key, align 16		

define void @foo() nounwind {
	%t0 = load i32, i32* undef, align 16		
	%t1 = load i32, i32* null, align 4		
	%t2 = srem i32 %t0, 32		
	%t3 = shl i32 1, %t2		
	%t4 = xor i32 %t3, %t1		
	store i32 %t4, i32* null, align 4
	%t5 = getelementptr %struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i64 0, i32 0, i64 0		
	%t6 = load i32, i32* %t5, align 4		
	%t7 = shl i32 1, undef		
	%t8 = xor i32 %t7, %t6		
	store i32 %t8, i32* %t5, align 4
	unreachable
}
