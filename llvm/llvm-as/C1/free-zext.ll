

define i64 @test_free_zext(i8* %a, i16* %b) {




  %1 = load i8, i8* %a, align 1
  %conv = zext i8 %1 to i64
  %2 = load i16, i16* %b, align 2
  %conv1 = zext i16 %2 to i64
  %add = add nsw i64 %conv1, %conv
  ret i64 %add
}
