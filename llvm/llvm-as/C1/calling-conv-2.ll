


%struct.test_struct = type { i32, i8, i64 }


define void @foo(%struct.test_struct* noalias nocapture sret %agg.result, i32 %a) #0 {
entry:
  call void @bar(%struct.test_struct* sret %agg.result, i32 45) #2
  ret void
}

declare void @bar(%struct.test_struct* sret, i32) #1
