





target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"


define void @test_indirect(void ()* nocapture %fp) {

  tail call void %fp()





  ret void
}

