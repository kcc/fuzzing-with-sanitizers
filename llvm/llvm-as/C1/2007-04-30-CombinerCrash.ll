

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64"
target triple = "arm-apple-darwin8"
        %struct.CHESS_POSITION = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8, i8, [64 x i8], i8, i8, i8, i8, i8 }
@search = external global %struct.CHESS_POSITION                
@file_mask = external global [8 x i64]          
@rank_mask.1.b = external global i1             

define fastcc void @EvaluateDevelopment() {
entry:
        %tmp7 = load i64, i64* getelementptr (%struct.CHESS_POSITION, %struct.CHESS_POSITION* @search, i32 0, i32 7)         
        %tmp50 = load i64, i64* getelementptr (%struct.CHESS_POSITION, %struct.CHESS_POSITION* @search, i32 0, i32 0)                
        %tmp52 = load i64, i64* getelementptr (%struct.CHESS_POSITION, %struct.CHESS_POSITION* @search, i32 0, i32 1)                
        %tmp53 = or i64 %tmp52, %tmp50          
        %tmp57.b = load i1, i1* @rank_mask.1.b              
        %tmp57 = select i1 %tmp57.b, i64 71776119061217280, i64 0               
        %tmp58 = and i64 %tmp57, %tmp7          
        %tmp59 = lshr i64 %tmp58, 8             
        %tmp63 = load i64, i64* getelementptr ([8 x i64], [8 x i64]* @file_mask, i32 0, i32 4)          
        %tmp64 = or i64 %tmp63, 0               
        %tmp65 = and i64 %tmp59, %tmp53         
        %tmp66 = and i64 %tmp65, %tmp64         
        %tmp67 = icmp eq i64 %tmp66, 0          
        br i1 %tmp67, label %cond_next145, label %cond_true70

cond_true70:            
        ret void

cond_next145:           
        ret void
}
