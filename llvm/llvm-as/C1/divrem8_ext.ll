

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

define zeroext i8 @test_udivrem_zext_ah(i8 %x, i8 %y) {






  %div = udiv i8 %x, %y
  store i8 %div, i8* @z
  %1 = urem i8 %x, %y
  ret i8 %1
}

define zeroext i8 @test_urem_zext_ah(i8 %x, i8 %y) {




  %1 = urem i8 %x, %y
  ret i8 %1
}

define i8 @test_urem_noext_ah(i8 %x, i8 %y) {





  %1 = urem i8 %x, %y
  %2 = add i8 %1, %y
  ret i8 %2
}

define i64 @test_urem_zext64_ah(i8 %x, i8 %y) {





  %1 = urem i8 %x, %y
  %2 = zext i8 %1 to i64
  ret i64 %2
}

define signext i8 @test_sdivrem_sext_ah(i8 %x, i8 %y) {







  %div = sdiv i8 %x, %y
  store i8 %div, i8* @z
  %1 = srem i8 %x, %y
  ret i8 %1
}

define signext i8 @test_srem_sext_ah(i8 %x, i8 %y) {





  %1 = srem i8 %x, %y
  ret i8 %1
}

define i8 @test_srem_noext_ah(i8 %x, i8 %y) {






  %1 = srem i8 %x, %y
  %2 = add i8 %1, %y
  ret i8 %2
}

define i64 @test_srem_sext64_ah(i8 %x, i8 %y) {








  %1 = srem i8 %x, %y
  %2 = sext i8 %1 to i64
  ret i64 %2
}

@z = external global i8
