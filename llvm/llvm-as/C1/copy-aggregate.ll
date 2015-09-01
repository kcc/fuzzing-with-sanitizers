

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"


define i32 @test1(i64 %V) nounwind {


	%X = alloca {{i32, i32}}
	%Y = bitcast {{i32,i32}}* %X to i64*
	store i64 %V, i64* %Y

	%A = getelementptr {{i32,i32}}, {{i32,i32}}* %X, i32 0, i32 0, i32 0
	%B = getelementptr {{i32,i32}}, {{i32,i32}}* %X, i32 0, i32 0, i32 1
	%a = load i32, i32* %A
	%b = load i32, i32* %B
	%c = add i32 %a, %b
	ret i32 %c
}


define float @test2(i128 %V) nounwind {


	%X = alloca {[4 x float]}
	%Y = bitcast {[4 x float]}* %X to i128*
	store i128 %V, i128* %Y

	%A = getelementptr {[4 x float]}, {[4 x float]}* %X, i32 0, i32 0, i32 0
	%B = getelementptr {[4 x float]}, {[4 x float]}* %X, i32 0, i32 0, i32 3
	%a = load float, float* %A
	%b = load float, float* %B
	%c = fadd float %a, %b
	ret float %c
}


define i64 @test3(i32 %a, i32 %b) nounwind {


	%X = alloca {{i32, i32}}

	%A = getelementptr {{i32,i32}}, {{i32,i32}}* %X, i32 0, i32 0, i32 0
	%B = getelementptr {{i32,i32}}, {{i32,i32}}* %X, i32 0, i32 0, i32 1
        store i32 %a, i32* %A
        store i32 %b, i32* %B

	%Y = bitcast {{i32,i32}}* %X to i64*
        %Z = load i64, i64* %Y
	ret i64 %Z
}


define i128 @test4(float %a, float %b) nounwind {


	%X = alloca {[4 x float]}
	%A = getelementptr {[4 x float]}, {[4 x float]}* %X, i32 0, i32 0, i32 0
	%B = getelementptr {[4 x float]}, {[4 x float]}* %X, i32 0, i32 0, i32 3
	store float %a, float* %A
	store float %b, float* %B
        
      	%Y = bitcast {[4 x float]}* %X to i128*
	%V = load i128, i128* %Y
	ret i128 %V
}



%padded = type { i16, i8 }
define void @test5([4 x %padded]* %p, [4 x %padded]* %q) {
entry:


  %var = alloca [4 x %padded], align 4
  %vari8 = bitcast [4 x %padded]* %var to i8*
  %pi8 = bitcast [4 x %padded]* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %vari8, i8* %pi8, i32 16, i32 4, i1 false)
  %qi8 = bitcast [4 x %padded]* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %qi8, i8* %vari8, i32 16, i32 4, i1 false)
  ret void
}




%homogeneous = type { <8 x i16>, <8 x i16>, <8 x i16> }
%wrapped_array = type { [3 x <8 x i16>] }
define void @test6(i8* %p, %wrapped_array* %arr) {
entry:




  %var = alloca %wrapped_array, align 16
  %res = call %homogeneous @test6callee(i8* %p)
  %varcast = bitcast %wrapped_array* %var to %homogeneous*
  store %homogeneous %res, %homogeneous* %varcast
  %tmp1 = bitcast %wrapped_array* %arr to i8*
  %tmp2 = bitcast %wrapped_array* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %tmp1, i8* %tmp2, i32 48, i32 16, i1 false)
  ret void
}

declare %homogeneous @test6callee(i8* nocapture) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
