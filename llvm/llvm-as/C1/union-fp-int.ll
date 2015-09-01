



target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"

define i32 @test(float %X) {
	%X_addr = alloca float		
	store float %X, float* %X_addr
	%X_addr.upgrd.1 = bitcast float* %X_addr to i32*		
	%tmp = load i32, i32* %X_addr.upgrd.1		
	ret i32 %tmp
}

