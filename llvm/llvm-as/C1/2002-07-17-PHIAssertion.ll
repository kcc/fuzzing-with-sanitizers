



@bk = external global i32               
@hufts = external global i32            

define i32 @inflate() {
bb0:
        br label %bb2

bb2:            
        %reg128 = phi i32 [ %reg130, %bb6 ], [ 0, %bb0 ]                
        br i1 true, label %bb4, label %bb3

bb3:            
        br label %UnifiedExitNode

bb4:            
        %reg117 = load i32, i32* @hufts              
        %cond241 = icmp ule i32 %reg117, %reg128                
        br i1 %cond241, label %bb6, label %bb5

bb5:            
        br label %bb6

bb6:            
        %reg130 = phi i32 [ %reg117, %bb5 ], [ %reg128, %bb4 ]          
        br i1 false, label %bb2, label %bb7

bb7:            
        %reg126 = load i32, i32* @bk         
        %cond247 = icmp ule i32 %reg126, 7              
        br i1 %cond247, label %bb9, label %bb8

bb8:            
        %reg119 = load i32, i32* @bk         
        %cond256 = icmp ugt i32 %reg119, 7              
        br i1 %cond256, label %bb8, label %bb9

bb9:            
        br label %UnifiedExitNode

UnifiedExitNode:                
        %UnifiedRetVal = phi i32 [ 7, %bb3 ], [ 0, %bb9 ]               
        ret i32 %UnifiedRetVal
}

