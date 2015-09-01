




target datalayout = "e-m:e-p:32:32-i64:64-a:0-v32:32-n16:32"
target triple = "hexagon-unknown--elf"

%struct.s_t = type { %struct.anon, i32 }
%struct.anon = type { i32, [5 x i32] }

@g = common global [100 x %struct.s_t] zeroinitializer, align 8


define void @foo(i32 %x) #0 {
entry:
  %cmp = icmp slt i32 %x, 90
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %arrayidx1 = getelementptr inbounds [100 x %struct.s_t], [100 x %struct.s_t]* @g, i32 0, i32 %x, i32 0, i32 1, i32 2
  tail call void @bar(i32* %arrayidx1) #0
  br label %if.end

if.else:                                          
  %arrayidx5 = getelementptr inbounds [100 x %struct.s_t], [100 x %struct.s_t]* @g, i32 0, i32 %x, i32 0, i32 1, i32 3
  tail call void @bar(i32* %arrayidx5) #0
  br label %if.end

if.end:                                           
  ret void
}

declare void @bar(i32*) #0

attributes #0 = { nounwind }

