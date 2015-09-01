

@foo = external global <4 x float>              
@bar = external global <4 x float>              

define void @main() {
        %t0 = load <4 x float>, <4 x float>* @foo            
        %t1 = fadd <4 x float> %t0, %t0          
        %t2 = select i1 true, <4 x float> %t0, <4 x float> %t1          
        store <4 x float> %t2, <4 x float>* @bar
        ret void
}

