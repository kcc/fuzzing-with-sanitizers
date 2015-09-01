


define i32 @foo(<2 x i64> %bar) nounwind {
entry:

 %res1 = call i32 @llvm.x86.sse41.ptestc(<2 x i64> %bar, <2 x i64> %bar)

 %res2 = call i32 @llvm.x86.sse41.ptestz(<2 x i64> %bar, <2 x i64> %bar)

 %res3 = call i32 @llvm.x86.sse41.ptestnzc(<2 x i64> %bar, <2 x i64> %bar)
 %add1 = add i32 %res1, %res2
 %add2 = add i32 %add1, %res2
 ret i32 %add2
}





declare i32 @llvm.x86.sse41.ptestc(<2 x i64>, <2 x i64>) nounwind readnone
declare i32 @llvm.x86.sse41.ptestz(<2 x i64>, <2 x i64>) nounwind readnone
declare i32 @llvm.x86.sse41.ptestnzc(<2 x i64>, <2 x i64>) nounwind readnone



