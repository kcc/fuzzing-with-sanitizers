
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-pc-win32"

declare void @use(i32) readonly


define void @test(i32* %p, i32 %index) {



  %addr = getelementptr i32, i32* %p, i32 %index
  %val = load i32, i32* %addr
  call void @use(i32 %val)
  ret void
}

define void @test2(i32* %p, i32 %index) {



  %i = zext i32 %index to i64
  %addr = getelementptr i32, i32* %p, i64 %i
  %val = load i32, i32* %addr
  call void @use(i32 %val)
  ret void
}


define void @test3(i32* %p, i32 %index) {



  %addr_begin = getelementptr i32, i32* %p, i64 40
  %addr_fixed = getelementptr i32, i32* %addr_begin, i64 48
  %val_fixed = load i32, i32* %addr_fixed, !range !0
  %addr = getelementptr i32, i32* %addr_begin, i32 %val_fixed
  %val = load i32, i32* %addr
  call void @use(i32 %val)
  ret void
}

define void @test4(i32* %p, i32 %index) {



  %addr_begin = getelementptr i32, i32* %p, i64 40
  %addr_fixed = getelementptr i32, i32* %addr_begin, i64 48
  %val_fixed = load i32, i32* %addr_fixed, !range !0
  %i = sext i32 %val_fixed to i64
  %addr = getelementptr i32, i32* %addr_begin, i64 %i
  %val = load i32, i32* %addr
  call void @use(i32 %val)
  ret void
}


!0 = !{i32 0, i32 2147483647}



