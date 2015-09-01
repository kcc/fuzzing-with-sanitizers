
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"




define i8* @nest_receiver(i8* nest %arg) nounwind {





  ret i8* %arg
}

define i8* @nest_caller(i8* %arg) nounwind {





  %result = call i8* @nest_receiver(i8* nest %arg)
  ret i8* %result
}

define void @test_indirect(i32 ()* nocapture %f, i8* %p) {
entry:









  %callee.knr.cast = bitcast i32 ()* %f to i32 (i8*)*
  %call = tail call signext i32 %callee.knr.cast(i8* nest %p)
  ret void
}

