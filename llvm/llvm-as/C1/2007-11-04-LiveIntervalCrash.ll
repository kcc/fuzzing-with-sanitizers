


        %struct.dentry = type { %struct.dentry_operations* }
        %struct.dentry_operations = type { i32 (%struct.dentry*, %struct.qstr*)* }
        %struct.qstr = type { i32, i32, i8* }

define %struct.dentry* @d_hash_and_lookup(%struct.dentry* %dir, %struct.qstr* %name) {
entry:
        br i1 false, label %bb37, label %bb

bb:             
        %name8.0.reg2mem.0.rec = phi i64 [ %indvar.next, %bb ], [ 0, %entry ]           
        %hash.0.reg2mem.0 = phi i64 [ %tmp27, %bb ], [ 0, %entry ]              
        %tmp13 = load i8, i8* null, align 1         
        %tmp1314 = zext i8 %tmp13 to i64                
        %tmp25 = lshr i64 %tmp1314, 4           
        %tmp22 = add i64 %tmp25, %hash.0.reg2mem.0              
        %tmp26 = add i64 %tmp22, 0              
        %tmp27 = mul i64 %tmp26, 11             
        %indvar.next = add i64 %name8.0.reg2mem.0.rec, 1                
        %exitcond = icmp eq i64 %indvar.next, 0         
        br i1 %exitcond, label %bb37.loopexit, label %bb

bb37.loopexit:          
        %phitmp = trunc i64 %tmp27 to i32               
        br label %bb37

bb37:           
        %hash.0.reg2mem.1 = phi i32 [ %phitmp, %bb37.loopexit ], [ 0, %entry ]          
        store i32 %hash.0.reg2mem.1, i32* null, align 8
        %tmp75 = tail call i32 null( %struct.dentry* %dir, %struct.qstr* %name )                
        %tmp84 = tail call i32 (...) @d_lookup( %struct.dentry* %dir, %struct.qstr* %name )            
        ret %struct.dentry* null
}

declare i32 @d_lookup(...)
