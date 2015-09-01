
	
define void @""(float* %inregs, float* %outregs) {
        %a_addr.i = alloca <4 x float>          
        store <4 x float> < float undef, float undef, float undef, float undef >, <4 x float>* %a_addr.i
        ret void
}
