




@__bar = external hidden global i8*
@__baz = external hidden global i8*


define i8* @_foo() {
entry:


	%size = alloca i32, align 4
	%0 = load i8*, i8** @__bar, align 4
	%1 = icmp eq i8* %0, null
	br i1 %1, label %bb1, label %bb3

		
bb1:
	store i32 1026, i32* %size, align 4
	%2 = alloca [1026 x i8], align 1


	%3 = getelementptr inbounds [1026 x i8], [1026 x i8]* %2, i32 0, i32 0
	%4 = call i32 @_called_func(i8* %3, i32* %size) nounwind
	%5 = icmp eq i32 %4, 0
	br i1 %5, label %bb2, label %bb3
	
bb2:
	%6 = call i8* @strdup(i8* %3) nounwind
	store i8* %6, i8** @__baz, align 4
	br label %bb3
	
bb3:
	%.0 = phi i8* [ %0, %entry ], [ %6, %bb2 ], [ %3, %bb1 ]



	ret i8* %.0
}

declare noalias i8* @strdup(i8* nocapture) nounwind
declare i32 @_called_func(i8*, i32*) nounwind


define void @test_simple_var() {


  %addr32 = alloca i32
  %addr8 = bitcast i32* %addr32 to i8*




  call void @take_ptr(i8* %addr8)
  ret void
}


define void @test_local_var_addr_aligned() {


  %addr1.32 = alloca i32
  %addr1 = bitcast i32* %addr1.32 to i8*
  %addr2.32 = alloca i32
  %addr2 = bitcast i32* %addr2.32 to i8*



  call void @take_ptr(i8* %addr1)




  call void @take_ptr(i8* %addr2)

  ret void
}


define void @test_local_var_big_offset() {

  %addr1.32 = alloca i32, i32 257
  %addr1 = bitcast i32* %addr1.32 to i8*
  %addr2.32 = alloca i32, i32 257




  call void @take_ptr(i8* %addr1)

  ret void
}


define void @test_local_var_offset_1020() {

  %addr1 = alloca i8, i32 4
  %addr2 = alloca i8, i32 1020



  call void @take_ptr(i8* %addr1)

  ret void
}




define void @test_local_var_offset_1268() {

  %addr1 = alloca i8, i32 1
  %addr2 = alloca i8, i32 1268




  call void @take_ptr(i8* %addr1)

  ret void
}

declare void @take_ptr(i8*)
