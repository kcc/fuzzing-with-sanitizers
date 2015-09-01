

@foo = external global <4 x float>              
@bar = external global <4 x float>              

define void @main() {
        %t0 = load <4 x float>, <4 x float>* @foo            
        %t2 = fadd <4 x float> %t0, %t0          
        %t3 = select i1 false, <4 x float> %t0, <4 x float> %t2         
        store <4 x float> %t3, <4 x float>* @bar
        ret void
}

