







define i32 @test1(i32 %X) nounwind  {
entry:
	%tmp12 = trunc i32 %X to i8		
	%tmp123 = sext i8 %tmp12 to i32		
	ret i32 %tmp123
}







define i32 @test2({i16, [6 x i8]}* %this) {
entry:
  %b48 = getelementptr inbounds { i16, [6 x i8] }, { i16, [6 x i8] }* %this, i32 0, i32 1
  %cast = bitcast [6 x i8]* %b48 to i48*
  %bf.load = load i48, i48* %cast, align 2
  %bf.ashr = ashr i48 %bf.load, 32
  %bf.cast = trunc i48 %bf.ashr to i32
  ret i32 %bf.cast
}
