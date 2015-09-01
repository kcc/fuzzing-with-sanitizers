




target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%"class.llvm::MCOperand" = type { i8, %union.anon.110 }
%union.anon.110 = type { i64 }

define void @foo(i32 %v) {
entry:
  %MCOp = alloca %"class.llvm::MCOperand", align 8
  br label %next



next:
  %sunkaddr18 = ptrtoint %"class.llvm::MCOperand"* %MCOp to i64
  %sunkaddr19 = add i64 %sunkaddr18, 8
  %sunkaddr20 = inttoptr i64 %sunkaddr19 to double*
  store double 0.000000e+00, double* %sunkaddr20, align 8, !tbaa !1
  %sunkaddr21 = ptrtoint %"class.llvm::MCOperand"* %MCOp to i64
  %sunkaddr22 = add i64 %sunkaddr21, 8
  %sunkaddr23 = inttoptr i64 %sunkaddr22 to i32*
  store i32 %v, i32* %sunkaddr23, align 8, !tbaa !2
  ret void







}

!0 = !{ !"root" }
!1 = !{ !"set1", !0 }
!2 = !{ !"set2", !0 }

