
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-n8:16:32:64"

define { i32, i32 } @test0(i32 %x, i32 %y) {






entry:
  %a = alloca { i32, i32 }

  store { i32, i32 } undef, { i32, i32 }* %a

  %gep1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %a, i32 0, i32 0
  store i32 %x, i32* %gep1
  %gep2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %a, i32 0, i32 1
  store i32 %y, i32* %gep2

  %result = load { i32, i32 }, { i32, i32 }* %a
  ret { i32, i32 } %result
}

define { i32, i32 } @test1(i32 %x, i32 %y) {










entry:
  %a = alloca { i32, i32 }
  %b = alloca { i32, i32 }

  %gep1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %a, i32 0, i32 0
  store i32 %x, i32* %gep1
  %gep2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %a, i32 0, i32 1
  store i32 %y, i32* %gep2

  %result = load volatile { i32, i32 }, { i32, i32 }* %a
  store volatile { i32, i32 } %result, { i32, i32 }* %b
  ret { i32, i32 } %result
}
