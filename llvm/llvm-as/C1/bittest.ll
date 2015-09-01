


@b_rec.0 = external global i32          

define void @_Z12h000007_testv(i32* %P) {
entry:
        %tmp.2 = load i32, i32* @b_rec.0             
        %tmp.9 = or i32 %tmp.2, -989855744              
        %tmp.16 = and i32 %tmp.9, -805306369            
        %tmp.17 = and i32 %tmp.9, -973078529            
        store i32 %tmp.17, i32* @b_rec.0
        %tmp.17.shrunk = bitcast i32 %tmp.16 to i32             
        %tmp.22 = and i32 %tmp.17.shrunk, -1073741824           
        %tmp.23 = icmp eq i32 %tmp.22, -1073741824              
        br i1 %tmp.23, label %endif.0, label %then.0

then.0:         
        tail call void @abort( )
        unreachable

endif.0:                
        %tmp.17.shrunk2 = bitcast i32 %tmp.16 to i32            
        %tmp.27.mask = and i32 %tmp.17.shrunk2, 100663295               
        store i32 %tmp.27.mask, i32* %P
        ret void
}

declare void @abort()

