





define i32 @infinite_linear() {

entry:
        br label %loop

loop:           

        %i = phi i32 [ 1, %entry ], [ %i.next, %loop ]          
        %i.next = add i32 %i, 2         
        %c = icmp ne i32 %i, 100                


        br i1 %c, label %loop, label %loopexit

loopexit:               

        ret i32 %i
}


define i32 @infinite_quadratic() {

entry:
        br label %loop

loop:           

        %i = phi i32 [ 1, %entry ], [ %i.next, %loop ]          
        %isquare = mul i32 %i, %i               
        %i.next = add i32 %i, 1         
        %c = icmp ne i32 %isquare, 63           


        br i1 %c, label %loop, label %loopexit

loopexit:               

        ret i32 %i
}
