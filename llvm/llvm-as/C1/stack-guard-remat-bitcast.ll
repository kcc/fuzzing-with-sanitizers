

@__stack_chk_guard = external global i64*











define i32 @test_stack_guard_remat2() {
entry:
  %StackGuardSlot = alloca i8*
  %StackGuard = load i8*, i8** bitcast (i64** @__stack_chk_guard to i8**)
  call void @llvm.stackprotector(i8* %StackGuard, i8** %StackGuardSlot)
  %container = alloca [32 x i8], align 1
  call void @llvm.stackprotectorcheck(i8** bitcast (i64** @__stack_chk_guard to i8**))
  ret i32 -1
}

declare void @llvm.stackprotector(i8*, i8**)
declare void @llvm.stackprotectorcheck(i8**)
