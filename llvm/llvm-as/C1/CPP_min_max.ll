









define void @_Z5test1RiS_(i32* %x, i32* %y) {
entry:
        %tmp.1.i = load i32, i32* %y         
        %tmp.3.i = load i32, i32* %x         
        %tmp.4.i = icmp slt i32 %tmp.1.i, %tmp.3.i              
        %retval.i = select i1 %tmp.4.i, i32* %y, i32* %x                
        %tmp.4 = load i32, i32* %retval.i            
        store i32 %tmp.4, i32* %x
        ret void
}

define void @_Z5test2RiS_(i32* %x, i32* %y) {
entry:
        %tmp.0 = alloca i32             
        %tmp.2 = load i32, i32* %x           
        store i32 %tmp.2, i32* %tmp.0
        %tmp.3.i = load i32, i32* %y         
        %tmp.4.i = icmp slt i32 %tmp.2, %tmp.3.i                
        %retval.i = select i1 %tmp.4.i, i32* %y, i32* %tmp.0            
        %tmp.6 = load i32, i32* %retval.i            
        store i32 %tmp.6, i32* %y
        ret void
}

