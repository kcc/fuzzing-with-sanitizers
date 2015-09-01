

	%struct.Ray = type { %struct.Vec, %struct.Vec }
	%struct.Scene = type { i32 (...)** }
	%struct.Vec = type { double, double, double }

declare double @_Z9ray_traceRK3VecRK3RayRK5Scene(%struct.Vec*, %struct.Ray*, %struct.Scene*)

define i32 @main(i32 %argc, i8** %argv) {
entry:
	%tmp3 = alloca %struct.Ray, align 4		
	%tmp97 = icmp slt i32 0, 512		
	br i1 %tmp97, label %bb71, label %bb108

bb29:		
	%tmp322 = bitcast %struct.Ray* %tmp3 to %struct.Vec*		
	%tmp322.0 = getelementptr %struct.Vec, %struct.Vec* %tmp322, i32 0, i32 0		
	store double 0.000000e+00, double* %tmp322.0
	%tmp57 = call double @_Z9ray_traceRK3VecRK3RayRK5Scene( %struct.Vec* null, %struct.Ray* %tmp3, %struct.Scene* null )		
	br label %bb62

bb62:		
	%tmp65 = icmp slt i32 0, 4		
	br i1 %tmp65, label %bb29, label %bb68

bb68:		
	ret i32 0

bb71:		
	%tmp74 = icmp slt i32 0, 4		
	br i1 %tmp74, label %bb62, label %bb77

bb77:		
	ret i32 0

bb108:		
	ret i32 0
}
