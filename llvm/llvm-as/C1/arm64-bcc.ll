



define i32 @add(i32, i32) {
entry:
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %6, label %4


  %5 = extractvalue { i32, i1 } %2, 0
  ret i32 %5


  tail call void @llvm.trap()
  unreachable

}

%S64 = type <{ i64 }>
%S32 = type <{ i32 }>
%Sstruct = type <{ %S64, %S32 }>



define { i64, i1 } @foo(i64* , %Sstruct* , i1, i64) {
entry:
  %.sroa.0 = alloca i72, align 16
  %.count.value = getelementptr inbounds %Sstruct, %Sstruct* %1, i64 0, i32 0, i32 0
  %4 = load i64, i64* %.count.value, align 8
  %.repeatedValue.value = getelementptr inbounds %Sstruct, %Sstruct* %1, i64 0, i32 1, i32 0
  %5 = load i32, i32* %.repeatedValue.value, align 8
  %6 = icmp eq i64 %4, 0
  br label %7


  %.mask58 = and i32 %5, -2048
  %8 = icmp eq i32 %.mask58, 55296
  %.not134 = xor i1 %8, true
  %9 = icmp eq i32 %5, 1114112
  %or.cond135 = and i1 %9, %.not134
  br i1 %or.cond135, label %10, label %.loopexit


  %11 = and i32 %5, -2048
  %12 = icmp eq i32 %11, 55296
  br i1 %12, label %.loopexit, label %10


.loopexit:                                        
  tail call void @llvm.trap()
  unreachable
}


declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)


declare void @llvm.trap()
