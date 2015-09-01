



%"struct..0$_485" = type { i16, i16, i32 }
%union.PPToken = type { %"struct..0$_485" }
%struct.PPOperation = type { %union.PPToken, %union.PPToken, [6 x %union.PPToken], i32, i32, i32, [1 x i32], [0 x i8] }

define i32* @t() align 2 nounwind {
entry:
  %operation = alloca %struct.PPOperation, align 8 
  %0 = load i32**, i32*** null, align 4  
  %1 = ptrtoint i32** %0 to i32   
  %2 = sub nsw i32 %1, undef                      
  br i1 false, label %bb20, label %bb.nph380

bb20:                                             
  ret i32* null

bb.nph380:                                        
  %scevgep403 = getelementptr %struct.PPOperation, %struct.PPOperation* %operation, i32 0, i32 1, i32 0, i32 2 
  %3 = ashr i32 %2, 1                             
  %tmp405 = and i32 %3, -2                        
  %scevgep408 = getelementptr %struct.PPOperation, %struct.PPOperation* %operation, i32 0, i32 1, i32 0, i32 1 
  %tmp410 = and i32 %2, -4                        
  br label %bb169

bb169:                                            
  %index.6379 = phi i32 [ 0, %bb.nph380 ], [ %4, %bb169 ] 
  %tmp404 = mul i32 %index.6379, -2               
  %tmp406 = add i32 %tmp405, %tmp404              
  %scevgep407 = getelementptr i32, i32* %scevgep403, i32 %tmp406 
  %tmp409 = mul i32 %index.6379, -4               
  %tmp411 = add i32 %tmp410, %tmp409              
  %scevgep412 = getelementptr i16, i16* %scevgep408, i32 %tmp411 
  store i16 undef, i16* %scevgep412, align 2
  store i32 undef, i32* %scevgep407, align 4
  %4 = add nsw i32 %index.6379, 1                 
  br label %bb169
}



%struct.bufBit_s = type { i8*, i8 }

define fastcc void @printSwipe([2 x [256 x %struct.bufBit_s]]* nocapture %colourLines) nounwind {
entry:
  br label %for.body190
  
for.body261.i:                                    
  %line.3300.i = phi i32 [ undef, %for.body190 ], [ %add292.i, %for.body261.i ] 
  %conv268.i = and i32 %line.3300.i, 255          
  %tmp278.i = getelementptr [2 x [256 x %struct.bufBit_s]], [2 x [256 x %struct.bufBit_s]]* %colourLines, i32 undef, i32 %pen.1100, i32 %conv268.i, i32 0 
  store i8* undef, i8** %tmp278.i
  %tmp338 = shl i32 %line.3300.i, 3               
  %tmp339 = and i32 %tmp338, 2040                 
  %tmp285.i = getelementptr i8, i8* %scevgep328, i32 %tmp339 
  store i8 undef, i8* %tmp285.i
  %add292.i = add nsw i32 0, %line.3300.i         
  br i1 undef, label %for.body190, label %for.body261.i

for.body190:                                      
  %pen.1100 = phi i32 [ 0, %entry ], [ %inc230, %for.body261.i ], [ %inc230, %for.body190 ] 
  %scevgep328 = getelementptr [2 x [256 x %struct.bufBit_s]], [2 x [256 x %struct.bufBit_s]]* %colourLines, i32 undef, i32 %pen.1100, i32 0, i32 1 
  %inc230 = add i32 %pen.1100, 1                  
  br i1 undef, label %for.body190, label %for.body261.i
}
