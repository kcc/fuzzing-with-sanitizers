





	%struct.A = type { i32*, i32 }
@"_ZZ20-[Example1 whatever]E4C.91" = private constant %struct.A { i32* null, i32 1 }		

define internal i32* @"\01-[Example1 whatever]"() nounwind optsize ssp {
entry:
	%0 = getelementptr %struct.A, %struct.A* @"_ZZ20-[Example1 whatever]E4C.91", i64 0, i32 0		
	%1 = load i32*, i32** %0, align 8		
	ret i32* %1
}
