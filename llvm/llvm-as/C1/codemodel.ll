


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
@data = external global [0 x i32]		

define i32 @foo() nounwind readonly {
entry:




	%0 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @data, i64 0, i64 0), align 4		
	ret i32 %0
}

define i32 @foo2() nounwind readonly {
entry:




	%0 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @data, i32 0, i64 10), align 4		
	ret i32 %0
}

define i32 @foo3() nounwind readonly {
entry:




	%0 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @data, i32 0, i64 -10), align 4		
	ret i32 %0
}

define i32 @foo4() nounwind readonly {
entry:






	%0 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @data, i32 0, i64 4194304), align 4		
	ret i32 %0
}

define i32 @foo1() nounwind readonly {
entry:




        %0 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @data, i32 0, i64 4194303), align 4            
        ret i32 %0
}
define i32 @foo5() nounwind readonly {
entry:




	%0 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @data, i32 0, i64 -4194304), align 4		
	ret i32 %0
}
