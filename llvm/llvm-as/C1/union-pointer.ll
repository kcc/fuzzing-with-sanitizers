



target datalayout = "e-p:32:32-p1:16:16-n8:16:32"
target triple = "i686-apple-darwin8.7.2"

%struct.Val = type { i32*, i32 }

define i8* @test(i16* %X) {



	%X_addr = alloca i16*		
	store i16* %X, i16** %X_addr
	%X_addr.upgrd.1 = bitcast i16** %X_addr to i8**		
	%tmp = load i8*, i8** %X_addr.upgrd.1		
	ret i8* %tmp
}

define i8 addrspace(1)* @test_as1(i16 addrspace(1)* %x) {




    %x_addr = alloca i16 addrspace(1)*
	store i16 addrspace(1)* %x, i16 addrspace(1)** %x_addr
	%x_addr.upgrd.1 = bitcast i16 addrspace(1)** %x_addr to i8 addrspace(1)**
	%tmp = load i8 addrspace(1)*, i8 addrspace(1)** %x_addr.upgrd.1
	ret i8 addrspace(1)* %tmp
}

define i8 addrspace(1)* @test_as1_array(i16 addrspace(1)* %x) {




  %as_ptr_array = alloca [4 x i16 addrspace(1)*]
  %elem1 = getelementptr [4 x i16 addrspace(1)*], [4 x i16 addrspace(1)*]* %as_ptr_array, i32 0, i32 1
  store i16 addrspace(1)* %x, i16 addrspace(1)** %elem1
  %elem1.cast = bitcast i16 addrspace(1)** %elem1 to i8 addrspace(1)**
  %tmp = load i8 addrspace(1)*, i8 addrspace(1)** %elem1.cast
  ret i8 addrspace(1)* %tmp
}


define void @test2(i64 %Op.0) {




	%tmp = alloca %struct.Val, align 8		
	%tmp1 = alloca %struct.Val, align 8		
	%tmp.upgrd.2 = call i64 @_Z3foov( )		
	%tmp1.upgrd.3 = bitcast %struct.Val* %tmp1 to i64*		
	store i64 %tmp.upgrd.2, i64* %tmp1.upgrd.3
	%tmp.upgrd.4 = getelementptr %struct.Val, %struct.Val* %tmp, i32 0, i32 0		
	%tmp2 = getelementptr %struct.Val, %struct.Val* %tmp1, i32 0, i32 0		
	%tmp.upgrd.5 = load i32*, i32** %tmp2		
	store i32* %tmp.upgrd.5, i32** %tmp.upgrd.4
	%tmp3 = getelementptr %struct.Val, %struct.Val* %tmp, i32 0, i32 1		
	%tmp4 = getelementptr %struct.Val, %struct.Val* %tmp1, i32 0, i32 1		
	%tmp.upgrd.6 = load i32, i32* %tmp4		
	store i32 %tmp.upgrd.6, i32* %tmp3
	%tmp7 = bitcast %struct.Val* %tmp to { i64 }*		
	%tmp8 = getelementptr { i64 }, { i64 }* %tmp7, i32 0, i32 0		
	%tmp9 = load i64, i64* %tmp8		
	call void @_Z3bar3ValS_( i64 %Op.0, i64 %tmp9 )
	ret void
}

declare i64 @_Z3foov()

declare void @_Z3bar3ValS_(i64, i64)
