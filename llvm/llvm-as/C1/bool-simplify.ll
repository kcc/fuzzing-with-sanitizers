

define i32 @foo(<2 x i64> %c, i32 %a, i32 %b) {
  %t1 = call i32 @llvm.x86.sse41.ptestz(<2 x i64> %c, <2 x i64> %c)
  %t2 = icmp ne i32 %t1, 0
  %t3 = select i1 %t2, i32 %a, i32 %b
  ret i32 %t3





}

define i32 @bar(<2 x i64> %c) {
entry:
  %0 = call i32 @llvm.x86.sse41.ptestz(<2 x i64> %c, <2 x i64> %c)
  %1 = icmp ne i32 %0, 0
  br i1 %1, label %if-true-block, label %endif-block
if-true-block:                                    
  ret i32 0
endif-block:                                      
  ret i32 1





}

define i32 @bax(<2 x i64> %c) {
  %t1 = call i32 @llvm.x86.sse41.ptestz(<2 x i64> %c, <2 x i64> %c)
  %t2 = icmp eq i32 %t1, 1
  %t3 = zext i1 %t2 to i32
  ret i32 %t3




}

define i16 @rnd16(i16 %arg) nounwind uwtable {
  %1 = tail call { i16, i32 } @llvm.x86.rdrand.16() nounwind
  %2 = extractvalue { i16, i32 } %1, 0
  %3 = extractvalue { i16, i32 } %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i16 0, i16 %arg
  %6 = add i16 %5, %2
  ret i16 %6





}

define i32 @rnd32(i32 %arg) nounwind uwtable {
  %1 = tail call { i32, i32 } @llvm.x86.rdrand.32() nounwind
  %2 = extractvalue { i32, i32 } %1, 0
  %3 = extractvalue { i32, i32 } %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 %arg
  %6 = add i32 %5, %2
  ret i32 %6





}

define i64 @rnd64(i64 %arg) nounwind uwtable {
  %1 = tail call { i64, i32 } @llvm.x86.rdrand.64() nounwind
  %2 = extractvalue { i64, i32 } %1, 0
  %3 = extractvalue { i64, i32 } %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 0, i64 %arg
  %6 = add i64 %5, %2
  ret i64 %6





}

define i16 @seed16(i16 %arg) nounwind uwtable {
  %1 = tail call { i16, i32 } @llvm.x86.rdseed.16() nounwind
  %2 = extractvalue { i16, i32 } %1, 0
  %3 = extractvalue { i16, i32 } %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i16 0, i16 %arg
  %6 = add i16 %5, %2
  ret i16 %6





}

define i32 @seed32(i32 %arg) nounwind uwtable {
  %1 = tail call { i32, i32 } @llvm.x86.rdseed.32() nounwind
  %2 = extractvalue { i32, i32 } %1, 0
  %3 = extractvalue { i32, i32 } %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 %arg
  %6 = add i32 %5, %2
  ret i32 %6





}

define i64 @seed64(i64 %arg) nounwind uwtable {
  %1 = tail call { i64, i32 } @llvm.x86.rdseed.64() nounwind
  %2 = extractvalue { i64, i32 } %1, 0
  %3 = extractvalue { i64, i32 } %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 0, i64 %arg
  %6 = add i64 %5, %2
  ret i64 %6





}

declare i32 @llvm.x86.sse41.ptestz(<2 x i64>, <2 x i64>) nounwind readnone
declare { i16, i32 } @llvm.x86.rdrand.16() nounwind
declare { i32, i32 } @llvm.x86.rdrand.32() nounwind
declare { i64, i32 } @llvm.x86.rdrand.64() nounwind
declare { i16, i32 } @llvm.x86.rdseed.16() nounwind
declare { i32, i32 } @llvm.x86.rdseed.32() nounwind
declare { i64, i32 } @llvm.x86.rdseed.64() nounwind
