





target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define signext i32 @test_jump_table(i32 signext %i) nounwind {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
  ]

sw.default:                                       
  br label %sw.epilog

sw.bb:                                            
  %1 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %1, 7
  store i32 %mul, i32* %i.addr, align 4
  br label %sw.bb1

sw.bb1:                                           
  %2 = load i32, i32* %i.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i.addr, align 4
  br label %sw.bb2

sw.bb2:                                           
  %3 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %3, 3
  store i32 %add, i32* %i.addr, align 4
  br label %sw.bb3

sw.bb3:                                           
  %4 = load i32, i32* %i.addr, align 4
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %i.addr, align 4
  br label %sw.epilog

sw.epilog:                                        
  %5 = load i32, i32* %i.addr, align 4
  ret i32 %5
}








