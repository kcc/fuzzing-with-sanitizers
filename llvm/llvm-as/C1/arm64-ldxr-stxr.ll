

%0 = type { i64, i64 }

define i128 @f0(i8* %p) nounwind readonly {


entry:
  %ldrexd = tail call %0 @llvm.aarch64.ldxp(i8* %p)
  %0 = extractvalue %0 %ldrexd, 1
  %1 = extractvalue %0 %ldrexd, 0
  %2 = zext i64 %0 to i128
  %3 = zext i64 %1 to i128
  %shl = shl nuw i128 %2, 64
  %4 = or i128 %shl, %3
  ret i128 %4
}

define i32 @f1(i8* %ptr, i128 %val) nounwind {


entry:
  %tmp4 = trunc i128 %val to i64
  %tmp6 = lshr i128 %val, 64
  %tmp7 = trunc i128 %tmp6 to i64
  %strexd = tail call i32 @llvm.aarch64.stxp(i64 %tmp4, i64 %tmp7, i8* %ptr)
  ret i32 %strexd
}

declare %0 @llvm.aarch64.ldxp(i8*) nounwind
declare i32 @llvm.aarch64.stxp(i64, i64, i8*) nounwind

@var = global i64 0, align 8

define void @test_load_i8(i8* %addr) {






  %val = call i64 @llvm.aarch64.ldxr.p0i8(i8* %addr)
  %shortval = trunc i64 %val to i8
  %extval = zext i8 %shortval to i64
  store i64 %extval, i64* @var, align 8
  ret void
}

define void @test_load_i16(i16* %addr) {






  %val = call i64 @llvm.aarch64.ldxr.p0i16(i16* %addr)
  %shortval = trunc i64 %val to i16
  %extval = zext i16 %shortval to i64
  store i64 %extval, i64* @var, align 8
  ret void
}

define void @test_load_i32(i32* %addr) {






  %val = call i64 @llvm.aarch64.ldxr.p0i32(i32* %addr)
  %shortval = trunc i64 %val to i32
  %extval = zext i32 %shortval to i64
  store i64 %extval, i64* @var, align 8
  ret void
}

define void @test_load_i64(i64* %addr) {




  %val = call i64 @llvm.aarch64.ldxr.p0i64(i64* %addr)
  store i64 %val, i64* @var, align 8
  ret void
}


declare i64 @llvm.aarch64.ldxr.p0i8(i8*) nounwind
declare i64 @llvm.aarch64.ldxr.p0i16(i16*) nounwind
declare i64 @llvm.aarch64.ldxr.p0i32(i32*) nounwind
declare i64 @llvm.aarch64.ldxr.p0i64(i64*) nounwind

define i32 @test_store_i8(i32, i8 %val, i8* %addr) {




  %extval = zext i8 %val to i64
  %res = call i32 @llvm.aarch64.stxr.p0i8(i64 %extval, i8* %addr)
  ret i32 %res
}

define i32 @test_store_i16(i32, i16 %val, i16* %addr) {




  %extval = zext i16 %val to i64
  %res = call i32 @llvm.aarch64.stxr.p0i16(i64 %extval, i16* %addr)
  ret i32 %res
}

define i32 @test_store_i32(i32, i32 %val, i32* %addr) {




  %extval = zext i32 %val to i64
  %res = call i32 @llvm.aarch64.stxr.p0i32(i64 %extval, i32* %addr)
  ret i32 %res
}

define i32 @test_store_i64(i32, i64 %val, i64* %addr) {


  %res = call i32 @llvm.aarch64.stxr.p0i64(i64 %val, i64* %addr)
  ret i32 %res
}

declare i32 @llvm.aarch64.stxr.p0i8(i64, i8*) nounwind
declare i32 @llvm.aarch64.stxr.p0i16(i64, i16*) nounwind
declare i32 @llvm.aarch64.stxr.p0i32(i64, i32*) nounwind
declare i32 @llvm.aarch64.stxr.p0i64(i64, i64*) nounwind



define void @test_clear() {
  call void @llvm.aarch64.clrex()
  ret void
}

declare void @llvm.aarch64.clrex() nounwind

define i128 @test_load_acquire_i128(i8* %p) nounwind readonly {


entry:
  %ldrexd = tail call %0 @llvm.aarch64.ldaxp(i8* %p)
  %0 = extractvalue %0 %ldrexd, 1
  %1 = extractvalue %0 %ldrexd, 0
  %2 = zext i64 %0 to i128
  %3 = zext i64 %1 to i128
  %shl = shl nuw i128 %2, 64
  %4 = or i128 %shl, %3
  ret i128 %4
}

define i32 @test_store_release_i128(i8* %ptr, i128 %val) nounwind {


entry:
  %tmp4 = trunc i128 %val to i64
  %tmp6 = lshr i128 %val, 64
  %tmp7 = trunc i128 %tmp6 to i64
  %strexd = tail call i32 @llvm.aarch64.stlxp(i64 %tmp4, i64 %tmp7, i8* %ptr)
  ret i32 %strexd
}

declare %0 @llvm.aarch64.ldaxp(i8*) nounwind
declare i32 @llvm.aarch64.stlxp(i64, i64, i8*) nounwind

define void @test_load_acquire_i8(i8* %addr) {






  %val = call i64 @llvm.aarch64.ldaxr.p0i8(i8* %addr)
  %shortval = trunc i64 %val to i8
  %extval = zext i8 %shortval to i64
  store i64 %extval, i64* @var, align 8
  ret void
}

define void @test_load_acquire_i16(i16* %addr) {






  %val = call i64 @llvm.aarch64.ldaxr.p0i16(i16* %addr)
  %shortval = trunc i64 %val to i16
  %extval = zext i16 %shortval to i64
  store i64 %extval, i64* @var, align 8
  ret void
}

define void @test_load_acquire_i32(i32* %addr) {






  %val = call i64 @llvm.aarch64.ldaxr.p0i32(i32* %addr)
  %shortval = trunc i64 %val to i32
  %extval = zext i32 %shortval to i64
  store i64 %extval, i64* @var, align 8
  ret void
}

define void @test_load_acquire_i64(i64* %addr) {




  %val = call i64 @llvm.aarch64.ldaxr.p0i64(i64* %addr)
  store i64 %val, i64* @var, align 8
  ret void
}


declare i64 @llvm.aarch64.ldaxr.p0i8(i8*) nounwind
declare i64 @llvm.aarch64.ldaxr.p0i16(i16*) nounwind
declare i64 @llvm.aarch64.ldaxr.p0i32(i32*) nounwind
declare i64 @llvm.aarch64.ldaxr.p0i64(i64*) nounwind

define i32 @test_store_release_i8(i32, i8 %val, i8* %addr) {




  %extval = zext i8 %val to i64
  %res = call i32 @llvm.aarch64.stlxr.p0i8(i64 %extval, i8* %addr)
  ret i32 %res
}

define i32 @test_store_release_i16(i32, i16 %val, i16* %addr) {




  %extval = zext i16 %val to i64
  %res = call i32 @llvm.aarch64.stlxr.p0i16(i64 %extval, i16* %addr)
  ret i32 %res
}

define i32 @test_store_release_i32(i32, i32 %val, i32* %addr) {




  %extval = zext i32 %val to i64
  %res = call i32 @llvm.aarch64.stlxr.p0i32(i64 %extval, i32* %addr)
  ret i32 %res
}

define i32 @test_store_release_i64(i32, i64 %val, i64* %addr) {


  %res = call i32 @llvm.aarch64.stlxr.p0i64(i64 %val, i64* %addr)
  ret i32 %res
}

declare i32 @llvm.aarch64.stlxr.p0i8(i64, i8*) nounwind
declare i32 @llvm.aarch64.stlxr.p0i16(i64, i16*) nounwind
declare i32 @llvm.aarch64.stlxr.p0i32(i64, i32*) nounwind
declare i32 @llvm.aarch64.stlxr.p0i64(i64, i64*) nounwind
