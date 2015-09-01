
	%struct.foo = type opaque

define fastcc i32 @test(%struct.foo* %v, %struct.foo* %vi) {
	br i1 false, label %ilog2.exit, label %cond_true.i

cond_true.i:		
	ret i32 0

ilog2.exit:		
	%tmp24.i = load i32, i32* null		
	%tmp13.i12.i = tail call double @ldexp( double 0.000000e+00, i32 0 )		
	%tmp13.i13.i = fptrunc double %tmp13.i12.i to float		
	%tmp11.s = load i32, i32* null		
	%tmp11.i = bitcast i32 %tmp11.s to i32		
	%n.i = bitcast i32 %tmp24.i to i32		
	%tmp13.i7 = mul i32 %tmp11.i, %n.i		
	%tmp.i8 = tail call i8* @calloc( i32 %tmp13.i7, i32 4 )		
	br i1 false, label %bb224.preheader.i, label %bb.i

bb.i:		
	ret i32 0

bb224.preheader.i:		
	%tmp165.i = fpext float %tmp13.i13.i to double		
	ret i32 0
}

declare i8* @calloc(i32, i32)

declare double @ldexp(double, i32)
