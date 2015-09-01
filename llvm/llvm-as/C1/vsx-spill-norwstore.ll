
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@.str1 = external unnamed_addr constant [5 x i8], align 1
@.str10 = external unnamed_addr constant [9 x i8], align 1


define void @main() #0 {




entry:
  %0 = tail call <8 x i16> @llvm.ppc.altivec.vupkhsb(<16 x i8> <i8 0, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i8 -1>) #0
  %1 = tail call <8 x i16> @llvm.ppc.altivec.vupklsb(<16 x i8> <i8 0, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i8 -1>) #0
  br i1 false, label %if.then.i68.i, label %check.exit69.i

if.then.i68.i:                                    
  unreachable

check.exit69.i:                                   
  br i1 undef, label %if.then.i63.i, label %check.exit64.i

if.then.i63.i:                                    
  tail call void (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str1, i64 0, i64 0)) #0
  br label %check.exit64.i

check.exit64.i:                                   
  %2 = tail call i32 @llvm.ppc.altivec.vcmpequh.p(i32 2, <8 x i16> %0, <8 x i16> <i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0>) #0
  %tobool.i55.i = icmp eq i32 %2, 0
  br i1 %tobool.i55.i, label %if.then.i58.i, label %check.exit59.i

if.then.i58.i:                                    
  unreachable

check.exit59.i:                                   
  %3 = tail call i32 @llvm.ppc.altivec.vcmpequh.p(i32 2, <8 x i16> %1, <8 x i16> <i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1>) #0
  %tobool.i50.i = icmp eq i32 %3, 0
  br i1 %tobool.i50.i, label %if.then.i53.i, label %check.exit54.i

if.then.i53.i:                                    
  unreachable

check.exit54.i:                                   
  unreachable
}


declare <8 x i16> @llvm.ppc.altivec.vupkhsb(<16 x i8>) #1


declare <8 x i16> @llvm.ppc.altivec.vupklsb(<16 x i8>) #1


declare void @printf(i8* nocapture readonly, ...) #0


declare i32 @llvm.ppc.altivec.vcmpequh.p(i32, <8 x i16>, <8 x i16>) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

