

%structA = type { i128 }
@stubA = internal unnamed_addr constant %structA zeroinitializer, align 8



define void @test1() {





entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* undef, i8* bitcast (%structA* @stubA to i8*), i64 48, i32 8, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)
