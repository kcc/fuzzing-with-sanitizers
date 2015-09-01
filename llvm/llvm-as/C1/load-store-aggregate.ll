


target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"




%struct.foo = type { i32, i32 }

define i32 @test(%struct.foo* %P) {
entry:
	%L = alloca %struct.foo, align 8		
        %V = load %struct.foo, %struct.foo* %P
        store %struct.foo %V, %struct.foo* %L

	%tmp4 = getelementptr %struct.foo, %struct.foo* %L, i32 0, i32 0		
	%tmp5 = load i32, i32* %tmp4		
	ret i32 %tmp5
}

define %struct.foo @test2(i32 %A, i32 %B) {
entry:
	%L = alloca %struct.foo, align 8		
        %L.0 = getelementptr %struct.foo, %struct.foo* %L, i32 0, i32 0
        store i32 %A, i32* %L.0
        %L.1 = getelementptr %struct.foo, %struct.foo* %L, i32 0, i32 1
        store i32 %B, i32* %L.1
        %V = load %struct.foo, %struct.foo* %L
        ret %struct.foo %V
}
