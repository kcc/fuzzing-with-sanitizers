














define i32 @rx_bitset_empty(i32 %size, i32* %set) {
bb1:
        %reg110 = load i32, i32* %set                
        store i32 1, i32* %set
        %cast112 = sext i32 %size to i64                
        %reg113 = add i64 %cast112, 31          
        %reg114 = lshr i64 %reg113, 5           
        %cast109 = trunc i64 %reg114 to i32             
        %reg129 = add i32 %cast109, -1          
        %reg114-idxcast = trunc i64 %reg114 to i32              
        %reg114-idxcast-offset = add i32 %reg114-idxcast, 1073741823            
        %reg114-idxcast-offset.upgrd.1 = zext i32 %reg114-idxcast-offset to i64         
        %reg124 = getelementptr i32, i32* %set, i64 %reg114-idxcast-offset.upgrd.1           
        %reg125 = load i32, i32* %reg124             
        %cond232 = icmp ne i32 %reg125, 0               
        br i1 %cond232, label %bb3, label %bb2

bb2:            
        %cann-indvar = phi i32 [ 0, %bb1 ], [ %add1-indvar, %bb2 ]              
        %reg130-scale = mul i32 %cann-indvar, -1                
        %reg130 = add i32 %reg130-scale, %reg129                
        %add1-indvar = add i32 %cann-indvar, 1          
        %reg130-idxcast = bitcast i32 %reg130 to i32            
        %reg130-idxcast-offset = add i32 %reg130-idxcast, 1073741823            
        %reg130-idxcast-offset.upgrd.2 = zext i32 %reg130-idxcast-offset to i64         
        %reg118 = getelementptr i32, i32* %set, i64 %reg130-idxcast-offset.upgrd.2           
        %reg119 = load i32, i32* %reg118             
        %cond233 = icmp eq i32 %reg119, 0               
        br i1 %cond233, label %bb2, label %bb3

bb3:            
        store i32 %reg110, i32* %set
        %cast126 = zext i32 %reg110 to i64              
        %reg127 = add i64 %cast126, -1          
        %reg128 = lshr i64 %reg127, 63          
        %cast120 = trunc i64 %reg128 to i32             
        ret i32 %cast120
}

