

define internal void @func() {
        ret void
}

define void @main() {
        %X = bitcast void ()* @func to i32*             
        ret void
}

