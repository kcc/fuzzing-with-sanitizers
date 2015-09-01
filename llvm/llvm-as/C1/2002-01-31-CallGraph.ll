




        %FunTy = type i32 (i32)

define void @invoke(%FunTy* %x) {
        %foo = call i32 %x( i32 123 )           
        ret void
}


