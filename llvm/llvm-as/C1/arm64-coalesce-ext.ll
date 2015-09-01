


define i32 @test1sext(i64 %A, i64 %B, i32* %P, i64 *%P2) nounwind {
  %C = add i64 %A, %B
  
  %D = trunc i64 %C to i32
  %E = shl i64 %C, 32
  %F = ashr i64 %E, 32
  
  store volatile i64 %F, i64 *%P2
  
  store volatile i32 %D, i32* %P
  
  
  ret i32 %D
}
