
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "x86_64-apple-darwin10.0.0"

define void @test1(<4 x float>* %F, float %f) {
entry:
	%G = alloca <4 x float>, align 16		
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	store <4 x float> %tmp3, <4 x float>* %G
	%G.upgrd.1 = getelementptr <4 x float>, <4 x float>* %G, i32 0, i32 0		
	store float %f, float* %G.upgrd.1
	%tmp4 = load <4 x float>, <4 x float>* %G		
	%tmp6 = fadd <4 x float> %tmp4, %tmp4		
	store <4 x float> %tmp6, <4 x float>* %F
	ret void





}

define void @test2(<4 x float>* %F, float %f) {
entry:
	%G = alloca <4 x float>, align 16		
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	store <4 x float> %tmp3, <4 x float>* %G
	%tmp.upgrd.2 = getelementptr <4 x float>, <4 x float>* %G, i32 0, i32 2		
	store float %f, float* %tmp.upgrd.2
	%tmp4 = load <4 x float>, <4 x float>* %G		
	%tmp6 = fadd <4 x float> %tmp4, %tmp4		
	store <4 x float> %tmp6, <4 x float>* %F
	ret void





}

define void @test3(<4 x float>* %F, float* %f) {
entry:
	%G = alloca <4 x float>, align 16		
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	store <4 x float> %tmp3, <4 x float>* %G
	%tmp.upgrd.3 = getelementptr <4 x float>, <4 x float>* %G, i32 0, i32 2		
	%tmp.upgrd.4 = load float, float* %tmp.upgrd.3		
	store float %tmp.upgrd.4, float* %f
	ret void





}

define void @test4(<4 x float>* %F, float* %f) {
entry:
	%G = alloca <4 x float>, align 16		
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	store <4 x float> %tmp3, <4 x float>* %G
	%G.upgrd.5 = getelementptr <4 x float>, <4 x float>* %G, i32 0, i32 0		
	%tmp.upgrd.6 = load float, float* %G.upgrd.5		
	store float %tmp.upgrd.6, float* %f
	ret void





}

define i32 @test5(float %X) {  
	%X_addr = alloca [4 x float]
        %X1 = getelementptr [4 x float], [4 x float]* %X_addr, i32 0, i32 2
	store float %X, float* %X1
	%a = bitcast float* %X1 to i32*
	%tmp = load i32, i32* %a
	ret i32 %tmp



}

define i64 @test6(<2 x float> %X) {
	%X_addr = alloca <2 x float>
        store <2 x float> %X, <2 x float>* %X_addr
	%P = bitcast <2 x float>* %X_addr to i64*
	%tmp = load i64, i64* %P
	ret i64 %tmp



}

%struct.test7 = type { [6 x i32] }

define void @test7() {
entry:
  %memtmp = alloca %struct.test7, align 16
  %0 = bitcast %struct.test7* %memtmp to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %0, align 16
  %1 = getelementptr inbounds %struct.test7, %struct.test7* %memtmp, i64 0, i32 0, i64 5
  store i32 0, i32* %1, align 4
  ret void



}




define <1 x i64> @test8(<1 x i64> %a) {
entry:
  %a.addr = alloca <1 x i64>, align 8
  %__a = alloca <1 x i64>, align 8
  %tmp = alloca <1 x i64>, align 8
  store <1 x i64> %a, <1 x i64>* %a.addr, align 8
  %0 = load <1 x i64>, <1 x i64>* %a.addr, align 8
  store <1 x i64> %0, <1 x i64>* %__a, align 8
  %1 = load <1 x i64>, <1 x i64>* %__a, align 8
  %2 = bitcast <1 x i64> %1 to <8 x i8>
  %3 = bitcast <8 x i8> %2 to <1 x i64>
  %vshl_n = shl <1 x i64> %3, <i64 4>
  store <1 x i64> %vshl_n, <1 x i64>* %tmp
  %4 = load <1 x i64>, <1 x i64>* %tmp
  ret <1 x i64> %4




}
