

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-n8:16:32:64"

define i8 @test1() {







entry:
  %a = alloca [3 x i8]
  %b = alloca [3 x i8]


  %a0ptr = getelementptr [3 x i8], [3 x i8]* %a, i64 0, i32 0
  store i8 0, i8* %a0ptr
  %a1ptr = getelementptr [3 x i8], [3 x i8]* %a, i64 0, i32 1
  store i8 0, i8* %a1ptr
  %a2ptr = getelementptr [3 x i8], [3 x i8]* %a, i64 0, i32 2
  store i8 0, i8* %a2ptr
  %aiptr = bitcast [3 x i8]* %a to i24*
  %ai = load i24, i24* %aiptr














  %biptr = bitcast [3 x i8]* %b to i24*
  store i24 %ai, i24* %biptr
  %b0ptr = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i32 0
  %b0 = load i8, i8* %b0ptr
  %b1ptr = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i32 1
  %b1 = load i8, i8* %b1ptr
  %b2ptr = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i32 2
  %b2 = load i8, i8* %b2ptr








  %bsum0 = add i8 %b0, %b1
  %bsum1 = add i8 %bsum0, %b2
  ret i8 %bsum1



}

define i64 @test2() {





entry:
  %a = alloca [7 x i8]


  %a0ptr = getelementptr [7 x i8], [7 x i8]* %a, i64 0, i32 0
  %a1ptr = getelementptr [7 x i8], [7 x i8]* %a, i64 0, i32 1
  %a2ptr = getelementptr [7 x i8], [7 x i8]* %a, i64 0, i32 2
  %a3ptr = getelementptr [7 x i8], [7 x i8]* %a, i64 0, i32 3




  %a0i16ptr = bitcast i8* %a0ptr to i16*
  store i16 1, i16* %a0i16ptr

  store i8 1, i8* %a2ptr



  %a3i24ptr = bitcast i8* %a3ptr to i24*
  store i24 1, i24* %a3i24ptr



  %a2i40ptr = bitcast i8* %a2ptr to i40*
  store i40 1, i40* %a2i40ptr







  %aiptr = bitcast [7 x i8]* %a to i56*
  %ai = load i56, i56* %aiptr
  %ret = zext i56 %ai to i64
  ret i64 %ret






}

define i64 @PR14132(i1 %flag) {









entry:
  %a = alloca i64, align 8
  %b = alloca i8, align 8
  %ptr = alloca i64*, align 8


  %ptr.cast = bitcast i64** %ptr to i8**
  store i64 0, i64* %a
  store i8 1, i8* %b
  store i64* %a, i64** %ptr
  br i1 %flag, label %if.then, label %if.end

if.then:
  store i8* %b, i8** %ptr.cast
  br label %if.end




if.end:
  %tmp = load i64*, i64** %ptr
  %result = load i64, i64* %tmp



  ret i64 %result

}

declare void @f(i64 %x, i32 %y)

define void @test3() {

















entry:
  %a = alloca { i32, i24 }, align 4


  %tmp0 = bitcast { i32, i24 }* %a to i64*
  store i64 34494054408, i64* %tmp0
  %tmp1 = load i64, i64* %tmp0, align 4
  %tmp2 = bitcast { i32, i24 }* %a to i32*
  %tmp3 = load i32, i32* %tmp2, align 4








  call void @f(i64 %tmp1, i32 %tmp3)

  ret void

}

define void @test4() {







entry:
  %a = alloca { i32, i24 }, align 4
  %a2 = alloca i64, align 4


  store i64 34494054408, i64* %a2
  %tmp0 = bitcast { i32, i24 }* %a to i8*
  %tmp1 = bitcast i64* %a2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp0, i8* %tmp1, i64 8, i32 4, i1 false)




  %tmp2 = bitcast { i32, i24 }* %a to i64*
  %tmp3 = load i64, i64* %tmp2, align 4
  %tmp4 = bitcast { i32, i24 }* %a to i32*
  %tmp5 = load i32, i32* %tmp4, align 4








  call void @f(i64 %tmp3, i32 %tmp5)

  ret void

}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i32, i1)
