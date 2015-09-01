
declare {i16, i32} @llvm.x86.rdrand.16()
declare {i32, i32} @llvm.x86.rdrand.32()
declare {i64, i32} @llvm.x86.rdrand.64()

define i32 @_rdrand16_step(i16* %random_val) {
  %call = call {i16, i32} @llvm.x86.rdrand.16()
  %randval = extractvalue {i16, i32} %call, 0
  store i16 %randval, i16* %random_val
  %isvalid = extractvalue {i16, i32} %call, 1
  ret i32 %isvalid







}

define i32 @_rdrand32_step(i32* %random_val) {
  %call = call {i32, i32} @llvm.x86.rdrand.32()
  %randval = extractvalue {i32, i32} %call, 0
  store i32 %randval, i32* %random_val
  %isvalid = extractvalue {i32, i32} %call, 1
  ret i32 %isvalid






}

define i32 @_rdrand64_step(i64* %random_val) {
  %call = call {i64, i32} @llvm.x86.rdrand.64()
  %randval = extractvalue {i64, i32} %call, 0
  store i64 %randval, i64* %random_val
  %isvalid = extractvalue {i64, i32} %call, 1
  ret i32 %isvalid






}


define i32 @CSE() nounwind {
 %rand1 = tail call { i32, i32 } @llvm.x86.rdrand.32() nounwind
 %v1 = extractvalue { i32, i32 } %rand1, 0
 %rand2 = tail call { i32, i32 } @llvm.x86.rdrand.32() nounwind
 %v2 = extractvalue { i32, i32 } %rand2, 0
 %add = add i32 %v2, %v1
 ret i32 %add



}


define void @loop(i32* %p, i32 %n) nounwind {
entry:
  %tobool1 = icmp eq i32 %n, 0
  br i1 %tobool1, label %while.end, label %while.body

while.body:                                       
  %p.addr.03 = phi i32* [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %n.addr.02 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %dec = add nsw i32 %n.addr.02, -1
  %incdec.ptr = getelementptr inbounds i32, i32* %p.addr.03, i64 1
  %rand = tail call { i32, i32 } @llvm.x86.rdrand.32() nounwind
  %v1 = extractvalue { i32, i32 } %rand, 0
  store i32 %v1, i32* %p.addr.03, align 4
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        
  ret void




}
