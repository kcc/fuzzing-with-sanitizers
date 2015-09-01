





@G = internal global void ()* null              

define internal void @Actual() {
        ret void
}

define void @init() {
        store void ()* @Actual, void ()** @G
        ret void
}

define void @doit() {
        %FP = load void ()*, void ()** @G         
        %CC = icmp eq void ()* %FP, null                
        br i1 %CC, label %isNull, label %DoCall

DoCall:         
        call void %FP( )
        ret void

isNull:         
        ret void
}

