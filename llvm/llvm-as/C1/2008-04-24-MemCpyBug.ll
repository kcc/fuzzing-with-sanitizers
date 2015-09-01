


	%struct.S63 = type { [63 x i8] }
@g1s63 = external global %struct.S63		

declare void @test63(%struct.S63* byval align 4 ) nounwind 

define void @testit63_entry_2E_ce() nounwind  {
	tail call void @test63( %struct.S63* byval align 4  @g1s63 ) nounwind 
	ret void
}
