

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"




define i32 @test1() {


	%X = alloca [4 x i32]
	%Y = getelementptr [4 x i32], [4 x i32]* %X, i64 0, i64 6		
	store i32 0, i32* %Y
	%Z = load i32, i32* %Y		
	ret i32 %Z
}



define i32 @test2() nounwind {
entry:


        %yx2.i = alloca float, align 4          
        %yx26.i = bitcast float* %yx2.i to i64*         
        %0 = load i64, i64* %yx26.i, align 8         
        unreachable
}

%base = type { i32, [0 x i8] }
%padded = type { %base, [1 x i32] }


define void @test3() {
entry:



  %var_1 = alloca %padded, align 8                
  %0 = getelementptr inbounds %padded, %padded* %var_1, i32 0, i32 0 
  
  %p2 = getelementptr inbounds %base, %base* %0, i32 0, i32 1, i32 0 
  store i8 72, i8* %p2, align 1
  
  

  %callret = call %padded *@test3f() 
  %callretcast = bitcast %padded* %callret to i8*                     
  %var_11 = bitcast %padded* %var_1 to i8*        
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %callretcast, i8* %var_11, i32 8, i32 4, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare %padded* @test3f()
