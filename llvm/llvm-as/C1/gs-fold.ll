

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

%struct.thread = type { i32, i32, i32, i32 }

define i32 @test() nounwind uwtable {
entry:
  %0 = load volatile %struct.thread*, %struct.thread* addrspace(256)* null
  %c = getelementptr inbounds %struct.thread, %struct.thread* %0, i64 0, i32 2
  %1 = load i32, i32* %c, align 4
  ret i32 %1
}







