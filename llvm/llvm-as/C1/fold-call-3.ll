


	%"struct.clang::Action" = type { %"struct.clang::ActionBase" }
	%"struct.clang::ActionBase" = type { i32 (...)** }
	%"struct.clang::ActionBase::ActionResult<0u>" = type { i8*, i8 }
@NumTrials = internal global i32 10000000		
@llvm.used = appending global [1 x i8*] [ i8* bitcast (void (i8*, %"struct.clang::Action"*)* @_Z25RawPointerPerformanceTestPvRN5clang6ActionE to i8*) ], section "llvm.metadata"		

define void @_Z25RawPointerPerformanceTestPvRN5clang6ActionE(i8* %Val, %"struct.clang::Action"* %Actions) nounwind {
entry:
	%0 = alloca %"struct.clang::ActionBase::ActionResult<0u>", align 8		
	%1 = load i32, i32* @NumTrials, align 4		
	%2 = icmp eq i32 %1, 0		
	br i1 %2, label %return, label %bb.nph

bb.nph:		
	%3 = getelementptr %"struct.clang::Action", %"struct.clang::Action"* %Actions, i64 0, i32 0, i32 0		
	%mrv_gep = bitcast %"struct.clang::ActionBase::ActionResult<0u>"* %0 to i64*		
	%mrv_gep1 = getelementptr %"struct.clang::ActionBase::ActionResult<0u>", %"struct.clang::ActionBase::ActionResult<0u>"* %0, i64 0, i32 1		
	%4 = bitcast i8* %mrv_gep1 to i64*		
	%5 = getelementptr %"struct.clang::ActionBase::ActionResult<0u>", %"struct.clang::ActionBase::ActionResult<0u>"* %0, i64 0, i32 0		
	br label %bb

bb:		
	%Trial.01 = phi i32 [ 0, %bb.nph ], [ %12, %bb ]		
	%Val_addr.02 = phi i8* [ %Val, %bb.nph ], [ %11, %bb ]		
	%6 = load i32 (...)**, i32 (...)*** %3, align 8		
	%7 = getelementptr i32 (...)*, i32 (...)** %6, i64 70		
	%8 = load i32 (...)*, i32 (...)** %7, align 8		
	%9 = bitcast i32 (...)* %8 to { i64, i64 } (%"struct.clang::Action"*, i8*)*		
	%10 = call { i64, i64 } %9(%"struct.clang::Action"* %Actions, i8* %Val_addr.02) nounwind		
	%mrv_gr = extractvalue { i64, i64 } %10, 0		
	store i64 %mrv_gr, i64* %mrv_gep
	%mrv_gr2 = extractvalue { i64, i64 } %10, 1		
	store i64 %mrv_gr2, i64* %4
	%11 = load i8*, i8** %5, align 8		
	%12 = add i32 %Trial.01, 1		
	%13 = load i32, i32* @NumTrials, align 4		
	%14 = icmp ult i32 %12, %13		
	br i1 %14, label %bb, label %return

return:		
	ret void
}
