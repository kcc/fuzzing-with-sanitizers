

%struct.sret0 = type { i32, i32, i32 }

define void @test0(%struct.sret0* noalias sret %agg.result, i32 %dummy) nounwind {
entry:



  getelementptr %struct.sret0, %struct.sret0* %agg.result, i32 0, i32 0    
  store i32 %dummy, i32* %0, align 4
  getelementptr %struct.sret0, %struct.sret0* %agg.result, i32 0, i32 1    
  store i32 %dummy, i32* %1, align 4
  getelementptr %struct.sret0, %struct.sret0* %agg.result, i32 0, i32 2    
  store i32 %dummy, i32* %2, align 4
  ret void
}

