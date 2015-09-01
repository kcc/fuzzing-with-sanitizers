

@.str = private constant [4 x i8] c"%d\0A\00", align 4 

define internal fastcc i32 @Callee(i32 %i) nounwind {
entry:





  %0 = icmp eq i32 %i, 0                          
  br i1 %0, label %bb2, label %bb

bb:                                               
  %1 = alloca [1000 x i8], align 4                
  %.sub = getelementptr inbounds [1000 x i8], [1000 x i8]* %1, i32 0, i32 0 
  %2 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* %.sub, i32 0, i32 1000, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %i) nounwind 
  %3 = load i8, i8* %.sub, align 4                    
  %4 = sext i8 %3 to i32                          
  ret i32 %4

bb2:                                              






  ret i32 0
}

declare i32 @__sprintf_chk(i8*, i32, i32, i8*, ...) nounwind

define i32 @main() nounwind {

bb.nph:
  br label %bb

bb:                                               
  %0 = phi i32 [ 0, %bb.nph ], [ %3, %bb ]        
  %j.01 = phi i32 [ 0, %bb.nph ], [ %2, %bb ]     
  %1 = tail call fastcc i32 @Callee(i32 %0) nounwind 
  %2 = add nsw i32 %1, %j.01                      
  %3 = add nsw i32 %0, 1                          
  %exitcond = icmp eq i32 %3, 10000               
  br i1 %exitcond, label %bb2, label %bb

bb2:                                              





  %4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %2) nounwind 
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
