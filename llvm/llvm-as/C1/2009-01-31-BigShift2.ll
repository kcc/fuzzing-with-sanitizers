


define void @test(<8 x double>* %P, i64* %Q) nounwind {
	%A = load <8 x double>, <8 x double>* %P		
	%B = bitcast <8 x double> %A to i512		
	%C = lshr i512 %B, 448		
	%D = trunc i512 %C to i64		
	store volatile i64 %D, i64* %Q
	ret void
}
