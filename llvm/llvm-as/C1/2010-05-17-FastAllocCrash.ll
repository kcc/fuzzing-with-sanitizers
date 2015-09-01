
target triple = "arm-pc-linux-gnu"







%struct.CHESS_POSITION = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8, i8, [64 x i8], i8, i8, i8, i8, i8 }

@search = external global %struct.CHESS_POSITION  
@bishop_mobility_rr45 = external global [64 x [256 x i32]] 

declare fastcc i32 @FirstOne()

define fastcc void @Evaluate() {
entry:
  br i1 false, label %cond_false186, label %cond_true

cond_true:                                        
  ret void

cond_false186:                                    
  br i1 false, label %cond_true293, label %bb203

bb203:                                            
  ret void

cond_true293:                                     
  br i1 false, label %cond_true298, label %cond_next317

cond_true298:                                     
  br i1 false, label %cond_next518, label %cond_true397.preheader

cond_next317:                                     
  ret void

cond_true397.preheader:                           
  ret void

cond_next518:                                     
  br i1 false, label %bb1069, label %cond_true522

cond_true522:                                     
  ret void

bb1069:                                           
  br i1 false, label %cond_next1131, label %bb1096

bb1096:                                           
  ret void

cond_next1131:                                    
  br i1 false, label %cond_next1207, label %cond_true1150

cond_true1150:                                    
  ret void

cond_next1207:                                    
  br i1 false, label %cond_next1219, label %cond_true1211

cond_true1211:                                    
  ret void

cond_next1219:                                    
  br i1 false, label %cond_true1223, label %cond_next1283

cond_true1223:                                    
  br i1 false, label %cond_true1254, label %cond_true1264

cond_true1254:                                    
  br i1 false, label %bb1567, label %cond_true1369.preheader

cond_true1264:                                    
  ret void

cond_next1283:                                    
  ret void

cond_true1369.preheader:                          
  ret void

bb1567:                                           
  %tmp1591 = load i64, i64* getelementptr inbounds (%struct.CHESS_POSITION, %struct.CHESS_POSITION* @search, i32 0, i32 4) 
  %tmp1572 = tail call fastcc i32 @FirstOne()     
  %tmp1594 = load i32, i32* undef                      
  %tmp1594.upgrd.5 = trunc i32 %tmp1594 to i8     
  %shift.upgrd.6 = zext i8 %tmp1594.upgrd.5 to i64 
  %tmp1595 = lshr i64 %tmp1591, %shift.upgrd.6    
  %tmp1595.upgrd.7 = trunc i64 %tmp1595 to i32    
  %tmp1596 = and i32 %tmp1595.upgrd.7, 255        
  %gep.upgrd.8 = zext i32 %tmp1596 to i64         
  %tmp1598 = getelementptr [64 x [256 x i32]], [64 x [256 x i32]]* @bishop_mobility_rr45, i32 0, i32 %tmp1572, i64 %gep.upgrd.8 
  %tmp1599 = load i32, i32* %tmp1598                   
  %tmp1602 = sub i32 0, %tmp1599                  
  br i1 undef, label %cond_next1637, label %cond_true1607

cond_true1607:                                    
  ret void

cond_next1637:                                    
  %tmp1662 = sub i32 %tmp1602, 0                  
  ret void
}
