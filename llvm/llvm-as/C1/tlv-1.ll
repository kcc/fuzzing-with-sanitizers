

%struct.A = type { [48 x i8], i32, i32, i32 }

@c = external thread_local global %struct.A, align 4

define void @main() nounwind ssp {

entry:
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.A, %struct.A* @c, i32 0, i32 0, i32 0), i8 0, i64 60, i32 1, i1 false)
  unreachable  
  
  
  
  
}


define i32 @test() nounwind readonly ssp {
entry:







  %0 = load i32, i32* @a, align 4
  %1 = load i32, i32* @b, align 4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

@a = thread_local global i32 0                    
@b = thread_local global i32 0                    















