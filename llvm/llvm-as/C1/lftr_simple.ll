




target datalayout = "n8:16:32:64"


@A = external global i32                

define i32 @quadratic_setlt() {
entry:
        br label %loop

loop:           
        %i = phi i32 [ 7, %entry ], [ %i.next, %loop ]          
        %i.next = add i32 %i, 1         
        store i32 %i, i32* @A
        %i2 = mul i32 %i, %i            
        %c = icmp slt i32 %i2, 1000             
        br i1 %c, label %loop, label %loopexit

loopexit:               
        ret i32 %i
}

