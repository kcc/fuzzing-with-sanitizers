


define i32 @test1(i8 %x) nounwind readnone {
  %A = and i8 %x, -32
  %B = zext i8 %A to i32
  ret i32 %B
}





define i32 @test2(i8 %x) nounwind readnone {
  %A = and i8 %x, -32
  %B = zext i8 %A to i32
  %C = or i8 %x, 63
  %D = zext i8 %C to i32
  %E = add i32 %B, %D
  ret i32 %E
}





declare void @use(i32, i8)


define void @test3(i8 %x) nounwind readnone {
  %A = and i8 %x, -32
  %B = zext i8 %A to i32
  call void @use(i32 %B, i8 %x)
  ret void
}






