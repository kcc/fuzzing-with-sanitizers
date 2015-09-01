










define void @test(float addrspace(1)* %out, i32 %p) {
   %i = add i32 %p, 2
   %r = bitcast i32 %i to float
   store float %r, float addrspace(1)* %out
   ret void
}
