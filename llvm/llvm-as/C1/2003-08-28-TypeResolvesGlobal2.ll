



%M = type opaque

define void @foo(i32* %V) {
	ret void
}

declare void @foo.upgrd.1(%M*)

define void @other() {
	call void @foo.upgrd.1( %M* null )
	call void @foo( i32* null )
	ret void
}

