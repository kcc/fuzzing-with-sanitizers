











@hwords = global [3 x i16] zeroinitializer, align 1
@words  = global [3 x i32] zeroinitializer, align 1
@dwords = global [3 x i64] zeroinitializer, align 1

define void @fn_i16_dotdotdot_i16(i16 %a, ...) {
entry:

































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i16
  %e1 = getelementptr [3 x i16], [3 x i16]* @hwords, i32 0, i32 1
  store volatile i16 %arg1, i16* %e1, align 2

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i16
  %e2 = getelementptr [3 x i16], [3 x i16]* @hwords, i32 0, i32 2
  store volatile i16 %arg2, i16* %e2, align 2

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i16_dotdotdot_i32(i16 %a, ...) {
entry:

































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i32
  %e1 = getelementptr [3 x i32], [3 x i32]* @words, i32 0, i32 1
  store volatile i32 %arg1, i32* %e1, align 4

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i32
  %e2 = getelementptr [3 x i32], [3 x i32]* @words, i32 0, i32 2
  store volatile i32 %arg2, i32* %e2, align 4

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i16_dotdotdot_i64(i16 %a, ...) {
entry:










































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i64
  %e1 = getelementptr [3 x i64], [3 x i64]* @dwords, i32 0, i32 1
  store volatile i64 %arg1, i64* %e1, align 8

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i64
  %e2 = getelementptr [3 x i64], [3 x i64]* @dwords, i32 0, i32 2
  store volatile i64 %arg2, i64* %e2, align 8

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i32_dotdotdot_i16(i32 %a, ...) {
entry:

































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i16
  %e1 = getelementptr [3 x i16], [3 x i16]* @hwords, i32 0, i32 1
  store volatile i16 %arg1, i16* %e1, align 2

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i16
  %e2 = getelementptr [3 x i16], [3 x i16]* @hwords, i32 0, i32 2
  store volatile i16 %arg2, i16* %e2, align 2

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i32_dotdotdot_i32(i32 %a, ...) {
entry:

































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i32
  %e1 = getelementptr [3 x i32], [3 x i32]* @words, i32 0, i32 1
  store volatile i32 %arg1, i32* %e1, align 4

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i32
  %e2 = getelementptr [3 x i32], [3 x i32]* @words, i32 0, i32 2
  store volatile i32 %arg2, i32* %e2, align 4

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i32_dotdotdot_i64(i32 %a, ...) {
entry:










































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i64
  %e1 = getelementptr [3 x i64], [3 x i64]* @dwords, i32 0, i32 1
  store volatile i64 %arg1, i64* %e1, align 8

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i64
  %e2 = getelementptr [3 x i64], [3 x i64]* @dwords, i32 0, i32 2
  store volatile i64 %arg2, i64* %e2, align 8

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i64_dotdotdot_i16(i64 %a, ...) {
entry:
































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i16
  %e1 = getelementptr [3 x i16], [3 x i16]* @hwords, i32 0, i32 1
  store volatile i16 %arg1, i16* %e1, align 2

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i16
  %e2 = getelementptr [3 x i16], [3 x i16]* @hwords, i32 0, i32 2
  store volatile i16 %arg2, i16* %e2, align 2

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i64_dotdotdot_i32(i64 %a, ...) {
entry:
































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i32
  %e1 = getelementptr [3 x i32], [3 x i32]* @words, i32 0, i32 1
  store volatile i32 %arg1, i32* %e1, align 4

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i32
  %e2 = getelementptr [3 x i32], [3 x i32]* @words, i32 0, i32 2
  store volatile i32 %arg2, i32* %e2, align 4

  call void @llvm.va_end(i8* %ap2)

  ret void
}

define void @fn_i64_dotdotdot_i64(i64 %a, ...) {
entry:









































































































  %ap = alloca i8*, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)

  call void asm sideeffect "# ANCHOR1", ""()
  %arg1 = va_arg i8** %ap, i64
  %e1 = getelementptr [3 x i64], [3 x i64]* @dwords, i32 0, i32 1
  store volatile i64 %arg1, i64* %e1, align 8

  call void asm sideeffect "# ANCHOR2", ""()
  %arg2 = va_arg i8** %ap, i64
  %e2 = getelementptr [3 x i64], [3 x i64]* @dwords, i32 0, i32 2
  store volatile i64 %arg2, i64* %e2, align 8

  call void @llvm.va_end(i8* %ap2)

  ret void
}

declare void @llvm.va_start(i8*)
declare void @llvm.va_end(i8*)
