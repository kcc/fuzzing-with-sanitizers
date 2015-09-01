

        %v4f = type <4 x float>
@foo = external global %v4f             
@bar = external global %v4f             

define void @main() {
        br label %A

C:              
        store %v4f %t2, %v4f* @bar
        ret void

B:              
        %t2 = fadd %v4f %t0, %t0         
        br label %C

A:              
        %t0 = load %v4f, %v4f* @foo           
        br label %B
}

