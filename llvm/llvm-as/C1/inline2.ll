


	%IntArray = type { i32, [0 x i32*] }

declare void @llvm.gcroot(i8**, i8*) nounwind 

define i32 @f() gc "sample" {
	%x = call i32 @g( )		
	ret i32 %x
}

define internal i32 @g() gc "example" {
	%root = alloca i8*		
	call void @llvm.gcroot( i8** %root, i8* null )
	%obj = call %IntArray* @h( )		
	%obj.2 = bitcast %IntArray* %obj to i8*		
	store i8* %obj.2, i8** %root
	%Length.ptr = getelementptr %IntArray, %IntArray* %obj, i32 0, i32 0		
	%Length = load i32, i32* %Length.ptr		
	ret i32 %Length
}

declare %IntArray* @h()
