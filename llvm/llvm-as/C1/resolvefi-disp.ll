










target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"

%struct.S2760 = type { <2 x float>, %struct.anon, i32, [28 x i8] }
%struct.anon = type { [11 x %struct.anon.0], i64, [6 x { i64, i64 }], [24 x i8] }
%struct.anon.0 = type { [30 x %union.U4DI], i8, [0 x i16], [30 x i8] }
%union.U4DI = type { <4 x i64> }

@s2760 = external global %struct.S2760
@fails = external global i32

define void @check2760(%struct.S2760* noalias sret %agg.result, %struct.S2760* byval align 16, %struct.S2760* %arg1, %struct.S2760* byval align 16) {
entry:
  %arg0 = alloca %struct.S2760, align 32
  %arg2 = alloca %struct.S2760, align 32
  %arg1.addr = alloca %struct.S2760*, align 8
  %ret = alloca %struct.S2760, align 32
  %b1 = alloca %struct.S2760, align 32
  %b2 = alloca %struct.S2760, align 32
  %2 = bitcast %struct.S2760* %arg0 to i8*
  %3 = bitcast %struct.S2760* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 11104, i32 16, i1 false)
  %4 = bitcast %struct.S2760* %arg2 to i8*
  %5 = bitcast %struct.S2760* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 11104, i32 16, i1 false)
  store %struct.S2760* %arg1, %struct.S2760** %arg1.addr, align 8
  %6 = bitcast %struct.S2760* %ret to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 11104, i32 32, i1 false)
  %7 = bitcast %struct.S2760* %b1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 11104, i32 32, i1 false)
  %8 = bitcast %struct.S2760* %b2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 11104, i32 32, i1 false)
  %b = getelementptr inbounds %struct.S2760, %struct.S2760* %arg0, i32 0, i32 1
  %g = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 1
  %9 = load i64, i64* %g, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.S2760, %struct.S2760* @s2760, i32 0, i32 1, i32 1), align 8
  %cmp = icmp ne i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  %11 = load i32, i32* @fails, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* @fails, align 4
  br label %if.end

if.end:                                           
  %12 = load i64, i64* getelementptr inbounds (%struct.S2760, %struct.S2760* @s2760, i32 0, i32 1, i32 1), align 8
  %b3 = getelementptr inbounds %struct.S2760, %struct.S2760* %ret, i32 0, i32 1
  %g4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 1
  store i64 %12, i64* %g4, align 8
  %13 = bitcast %struct.S2760* %agg.result to i8*
  %14 = bitcast %struct.S2760* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 11104, i32 32, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1)

