








@b = external global i64*


declare i64* @get_ptr()
declare void @use_i64(i64 %v)

define void @test_ldrd(i64 %a) nounwind readonly {







  %ptr = call i64* @get_ptr()
  %v = load i64, i64* %ptr, align 8
  call void @use_i64(i64 %v)
  ret void
}





















define void @f(i32* nocapture %a, i32* nocapture %b, i32 %n) nounwind {
entry:
  %0 = add nsw i32 %n, -1                         
  %1 = icmp sgt i32 %0, 0                         
  br i1 %1, label %bb, label %return

bb:                                               
  %i.03 = phi i32 [ %tmp, %bb ], [ 0, %entry ]    
  %scevgep = getelementptr i32, i32* %a, i32 %i.03     
  %scevgep4 = getelementptr i32, i32* %b, i32 %i.03    
  %tmp = add i32 %i.03, 1                         
  %scevgep5 = getelementptr i32, i32* %a, i32 %tmp     
  %2 = load i32, i32* %scevgep, align 4                
  %3 = load i32, i32* %scevgep5, align 4               
  %4 = add nsw i32 %3, %2                         
  store i32 %4, i32* %scevgep4, align 4
  %exitcond = icmp eq i32 %tmp, %0                
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}



%struct.Test = type { i32, i32, i32 }

@TestVar = external global %struct.Test

define void @Func1() nounwind ssp {

entry: 





  %orig_blocks = alloca [256 x i16], align 2
  %0 = bitcast [256 x i16]* %orig_blocks to i8*call void @llvm.lifetime.start(i64 512, i8* %0) nounwind
  %tmp1 = load i32, i32* getelementptr inbounds (%struct.Test, %struct.Test* @TestVar, i32 0, i32 1), align 4
  %tmp2 = load i32, i32* getelementptr inbounds (%struct.Test, %struct.Test* @TestVar, i32 0, i32 2), align 4
  %add = add nsw i32 %tmp2, %tmp1
  store i32 %add, i32* getelementptr inbounds (%struct.Test, %struct.Test* @TestVar, i32 0, i32 0), align 4
  call void @llvm.lifetime.end(i64 512, i8* %0) nounwind
  ret void
}

declare void @extfunc(i32, i32, i32, i32)





define void @Func2(i32* %p) {
entry:
  %addr0 = getelementptr i32, i32* %p, i32 0
  %addr1 = getelementptr i32, i32* %p, i32 1
  %v0 = load i32, i32* %addr0
  %v1 = load i32, i32* %addr1
  
  call void @extfunc(i32 %v0, i32 0, i32 0, i32 %v1)
  ret void
}













define void @strd_spill_ldrd_reload(i32 %v0, i32 %v1) {
  
  call void asm sideeffect "", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{r12},~{lr}"()
  
  call void @extfunc(i32 0, i32 %v0, i32 %v1, i32 7)
  ret void
}

declare void @extfunc2(i32*, i32, i32)




define void @ldrd_postupdate_dec(i32* %p0) {
  %p0.1 = getelementptr i32, i32* %p0, i32 1
  %v0 = load i32, i32* %p0
  %v1 = load i32, i32* %p0.1
  %p1 = getelementptr i32, i32* %p0, i32 -2
  call void @extfunc2(i32* %p1, i32 %v0, i32 %v1)
  ret void
}




define void @ldrd_postupdate_inc(i32* %p0) {
  %p0.1 = getelementptr i32, i32* %p0, i32 1
  %v0 = load i32, i32* %p0
  %v1 = load i32, i32* %p0.1
  %p1 = getelementptr i32, i32* %p0, i32 2
  call void @extfunc2(i32* %p1, i32 %v0, i32 %v1)
  ret void
}




define i32* @strd_postupdate_dec(i32* %p0, i32 %v0, i32 %v1) {
  %p0.1 = getelementptr i32, i32* %p0, i32 1
  store i32 %v0, i32* %p0
  store i32 %v1, i32* %p0.1
  %p1 = getelementptr i32, i32* %p0, i32 -2
  ret i32* %p1
}




define i32* @strd_postupdate_inc(i32* %p0, i32 %v0, i32 %v1) {
  %p0.1 = getelementptr i32, i32* %p0, i32 1
  store i32 %v0, i32* %p0
  store i32 %v1, i32* %p0.1
  %p1 = getelementptr i32, i32* %p0, i32 2
  ret i32* %p1
}

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind
