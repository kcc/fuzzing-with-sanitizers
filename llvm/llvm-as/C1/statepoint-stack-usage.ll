

target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"






define i32 @back_to_back_calls(i32 addrspace(1)* %a, i32 addrspace(1)* %b, i32 addrspace(1)* %c) #1 gc "statepoint-example" {







  %safepoint_token = tail call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* undef, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 addrspace(1)* %a, i32 addrspace(1)* %b, i32 addrspace(1)* %c)
  %a1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 12)
  %b1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 13)
  %c1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 14)



  %safepoint_token2 = tail call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* undef, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 addrspace(1)* %c1, i32 addrspace(1)* %b1, i32 addrspace(1)* %a1)
  %a2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 14)
  %b2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 13)
  %c2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 12)

  ret i32 1
}



define i32 @reserve_first(i32 addrspace(1)* %a, i32 addrspace(1)* %b, i32 addrspace(1)* %c) #1 gc "statepoint-example" {





  %safepoint_token = tail call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* undef, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 addrspace(1)* %a, i32 addrspace(1)* %b, i32 addrspace(1)* %c)
  %a1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 12)
  %b1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 13)
  %c1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 14)



  %safepoint_token2 = tail call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* undef, i32 0, i32 0, i32 0, i32 5, i32 addrspace(1)* %a1, i32 0, i32 addrspace(1)* %c1, i32 0, i32 0, i32 addrspace(1)* %c1, i32 addrspace(1)* %b1, i32 addrspace(1)* %a1)
  %a2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 14)
  %b2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 13)
  %c2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 12)

  ret i32 1
}


define i32 @back_to_back_invokes(i32 addrspace(1)* %a, i32 addrspace(1)* %b, i32 addrspace(1)* %c) #1 gc "statepoint-example" personality i32 ()* @"personality_function" {

entry:
  
  
  
  
  
  %safepoint_token = invoke i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* undef, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 addrspace(1)* %a, i32 addrspace(1)* %b, i32 addrspace(1)* %c)
                   to label %normal_return unwind label %exceptional_return

normal_return:
  %a1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 12)
  %b1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 13)
  %c1 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token, i32 12, i32 14)
  
  %c1.casted = bitcast i32 addrspace(1)* %c1 to i8 addrspace(1)*
  
  
  
  %safepoint_token2 = invoke i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* undef, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0, i8 addrspace(1)* %c1.casted, i32 addrspace(1)* %b1, i32 addrspace(1)* %a1)
                    to label %normal_return2 unwind label %exceptional_return2

normal_return2:
  %a2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 14)
  %b2 = tail call coldcc i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %safepoint_token2, i32 12, i32 13)
  %c2 = tail call coldcc i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(i32 %safepoint_token2, i32 12, i32 12)
  ret i32 1

exceptional_return:
  %landing_pad = landingpad { i8*, i32 }
          cleanup
  ret i32 0

exceptional_return2:
  %landing_pad2 = landingpad { i8*, i32 }
          cleanup
  ret i32 0
}


declare i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32, i32, i32) #3
declare i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(i32, i32, i32) #3

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)

declare i32 @"personality_function"()

attributes #1 = { uwtable }
