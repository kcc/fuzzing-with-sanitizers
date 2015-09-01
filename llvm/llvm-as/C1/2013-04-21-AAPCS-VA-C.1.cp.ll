








@.str = private unnamed_addr constant [13 x i8] c"%d %d %f %i\0A\00", align 1


define void @printfn(i32 %a, i16 signext %b, double %C, i8 signext %E) {
entry:
  %conv = sext i16 %b to i32
  %conv1 = sext i8 %E to i32
  %call = tail call i32 (i8*, ...) @printf(
	i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), 
        i32 %a,                                          
        i32 %conv,                                       
        double %C,                                       

        i32 %conv1)                                      
  ret void
}

declare i32 @printf(i8* nocapture, ...)

