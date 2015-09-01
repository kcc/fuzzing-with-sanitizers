


%0 = type { i64, i1 }

define i64 @test1(i64 %a, i64 %b) nounwind ssp {
entry:
  %uadd = tail call %0 @llvm.uadd.with.overflow.i64(i64 %a, i64 %b)
  %uadd.0 = extractvalue %0 %uadd, 0
  %add1 = add i64 %a, %b
  ret i64 %add1
}





define i64 @test2(i64 %a, i64 %b) nounwind ssp {
entry:
  %usub = tail call %0 @llvm.usub.with.overflow.i64(i64 %a, i64 %b)
  %usub.0 = extractvalue %0 %usub, 0
  %sub1 = sub i64 %a, %b
  ret i64 %sub1
}





define i64 @test3(i64 %a, i64 %b) nounwind ssp {
entry:
  %umul = tail call %0 @llvm.umul.with.overflow.i64(i64 %a, i64 %b)
  %umul.0 = extractvalue %0 %umul, 0
  %mul1 = mul i64 %a, %b
  ret i64 %mul1
}





define i64 @test4(i64 %a, i64 %b) nounwind ssp {
entry:
  %sadd = tail call %0 @llvm.sadd.with.overflow.i64(i64 %a, i64 %b)
  %sadd.0 = extractvalue %0 %sadd, 0
  %add1 = add i64 %a, %b
  ret i64 %add1
}





define i64 @test5(i64 %a, i64 %b) nounwind ssp {
entry:
  %ssub = tail call %0 @llvm.ssub.with.overflow.i64(i64 %a, i64 %b)
  %ssub.0 = extractvalue %0 %ssub, 0
  %sub1 = sub i64 %a, %b
  ret i64 %sub1
}





define i64 @test6(i64 %a, i64 %b) nounwind ssp {
entry:
  %smul = tail call %0 @llvm.smul.with.overflow.i64(i64 %a, i64 %b)
  %smul.0 = extractvalue %0 %smul, 0
  %mul1 = mul i64 %a, %b
  ret i64 %mul1
}





declare void @exit(i32) noreturn
declare %0 @llvm.uadd.with.overflow.i64(i64, i64) nounwind readnone
declare %0 @llvm.usub.with.overflow.i64(i64, i64) nounwind readnone
declare %0 @llvm.umul.with.overflow.i64(i64, i64) nounwind readnone
declare %0 @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone
declare %0 @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone
declare %0 @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

