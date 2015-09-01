






%T = type opaque

declare %T* @create()

define void @test() {
	%X = call %T* @create( )		
	%v = icmp eq %T* %X, null		
	ret void
}

