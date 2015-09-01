



declare i32 @llvm.s390.tbegin(i8 *, i32)
declare i32 @llvm.s390.tbegin.nofloat(i8 *, i32)
declare void @llvm.s390.tbeginc(i8 *, i32)
declare i32 @llvm.s390.tend()
declare void @llvm.s390.tabort(i64)
declare void @llvm.s390.ntstg(i64, i64 *)
declare i32 @llvm.s390.etnd()
declare void @llvm.s390.ppa.txassist(i32)


define void @test_tbegin() {




















  call i32 @llvm.s390.tbegin(i8 *null, i32 65292)
  ret void
}


define void @test_tbegin_nofloat1() {





  call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 65292)
  ret void
}


define i32 @test_tbegin_nofloat2() {







  %res = call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 65292)
  ret i32 %res
}


define void @test_tbegin_nofloat3(i32 *%ptr) {







  %res = call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 65292)
  %cmp = icmp eq i32 %res, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  store i32 0, i32* %ptr, align 4
  br label %if.end

if.end:                                           
  ret void
}


define i32 @test_tbegin_nofloat4(i32 %pad, i32 *%ptr) {









  %res = call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 65292)
  %cmp = icmp eq i32 %res, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  store i32 0, i32* %ptr, align 4
  br label %if.end

if.end:                                           
  ret i32 %res
}


define void @test_tbegin_nofloat5(i8 *%ptr) {





  call i32 @llvm.s390.tbegin.nofloat(i8 *%ptr, i32 65292)
  ret void
}


define void @test_tbegin_nofloat6() {





  call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 3840)
  ret void
}


define void @test_tbegin_nofloat7() {





  call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 61696)
  ret void
}


define void @test_tbegin_nofloat8() {





  call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 65024)
  ret void
}


define void @test_tbegin_nofloat9() {





  call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 64256)
  ret void
}


define void @test_tbegin_nofloat10(i64 %n) {





  %buf = alloca i8, i64 %n
  call i32 @llvm.s390.tbegin.nofloat(i8 *null, i32 64256)
  ret void
}


define void @test_tbeginc() {





  call void @llvm.s390.tbeginc(i8 *null, i32 65288)
  ret void
}


define i32 @test_tend1() {





  %res = call i32 @llvm.s390.tend()
  ret i32 %res
}


define void @test_tend3(i32 *%ptr) {





  %res = call i32 @llvm.s390.tend()
  %cmp = icmp eq i32 %res, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  store i32 0, i32* %ptr, align 4
  br label %if.end

if.end:                                           
  ret void
}


define i32 @test_tend2(i32 %pad, i32 *%ptr) {







  %res = call i32 @llvm.s390.tend()
  %cmp = icmp eq i32 %res, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  store i32 0, i32* %ptr, align 4
  br label %if.end

if.end:                                           
  ret i32 %res
}


define void @test_tabort1(i64 %val) {



  call void @llvm.s390.tabort(i64 %val)
  ret void
}


define void @test_tabort2(i64 %val) {



  call void @llvm.s390.tabort(i64 1234)
  ret void
}


define void @test_tabort3(i64 %val) {



  %sum = add i64 %val, 1234
  call void @llvm.s390.tabort(i64 %sum)
  ret void
}


define void @test_tabort4(i64 %val) {



  call void @llvm.s390.tabort(i64 4096)
  ret void
}


define void @test_ntstg1(i64 *%ptr, i64 %val) {



  call void @llvm.s390.ntstg(i64 %val, i64 *%ptr)
  ret void
}



define void @test_ntstg2(i64 *%base, i64 %index, i64 %val) {




  %ptr = getelementptr i64, i64 *%base, i64 %index
  call void @llvm.s390.ntstg(i64 %val, i64 *%ptr)
  ret void
}


define void @test_ntstg3(i64 *%base, i64 %val) {



  %ptr = getelementptr i64, i64 *%base, i64 65535
  call void @llvm.s390.ntstg(i64 %val, i64 *%ptr)
  ret void
}


define void @test_ntstg4(i64 *%base, i64 %val) {



  %ptr = getelementptr i64, i64 *%base, i64 65536
  call void @llvm.s390.ntstg(i64 %val, i64 *%ptr)
  ret void
}


define void @test_ntstg5(i64 *%base, i64 %val) {



  %ptr = getelementptr i64, i64 *%base, i64 -65536
  call void @llvm.s390.ntstg(i64 %val, i64 *%ptr)
  ret void
}


define void @test_ntstg6(i64 *%base, i64 %val) {



  %ptr = getelementptr i64, i64 *%base, i64 -65537
  call void @llvm.s390.ntstg(i64 %val, i64 *%ptr)
  ret void
}


define i32 @test_etnd() {



  %res = call i32 @llvm.s390.etnd()
  ret i32 %res
}


define void @test_ppa_txassist(i32 %val) {



  call void @llvm.s390.ppa.txassist(i32 %val)
  ret void
}

