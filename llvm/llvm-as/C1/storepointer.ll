

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
        call void %FP( )
        ret void
}

