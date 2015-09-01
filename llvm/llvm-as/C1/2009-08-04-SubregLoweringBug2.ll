


	%struct.Hosp = type { i32, i32, i32, %struct.List, %struct.List, %struct.List, %struct.List }
	%struct.List = type { %struct.List*, %struct.Patient*, %struct.List* }
	%struct.Patient = type { i32, i32, i32, %struct.Village* }
	%struct.Village = type { [4 x %struct.Village*], %struct.Village*, %struct.List, %struct.Hosp, i32, i32 }

define %struct.List* @sim(%struct.Village* %village) nounwind {
entry:
	br i1 undef, label %bb14, label %bb3.preheader

bb3.preheader:		
	br label %bb5

bb5:		
	br i1 undef, label %bb11, label %bb5

bb11:		
	%0 = fmul float undef, 0x41E0000000000000		
	%1 = fptosi float %0 to i32		
	store i32 %1, i32* undef, align 4
	br i1 undef, label %generate_patient.exit, label %generate_patient.exit.thread

generate_patient.exit.thread:		
	ret %struct.List* null

generate_patient.exit:		
	br i1 undef, label %bb14, label %bb12

bb12:		
	br i1 undef, label %bb.i, label %bb1.i

bb.i:		
	ret %struct.List* null

bb1.i:		
	ret %struct.List* null

bb14:		
	ret %struct.List* undef
}
