


@g_16 = global i64 -3738643449681751625, align 8  
@g_38 = global i32 0, align 4                     
@.str = private constant [4 x i8] c"%d\0A\00"     

define i32 @main() nounwind {
entry:
  %tmp = load i64, i64* @g_16                          
  %not.lnot = icmp ne i64 %tmp, 0                 
  %conv = sext i1 %not.lnot to i64                
  %and = and i64 %conv, 150                       
  %conv.i = trunc i64 %and to i8                  
  %cmp = icmp sgt i8 %conv.i, 0                   
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge





entry.if.end_crit_edge:                           
  %tmp4.pre = load i32, i32* @g_38                     
  br label %if.end

if.then:                                          
  store i32 1, i32* @g_38
  br label %if.end

if.end:                                           
  %tmp4 = phi i32 [ %tmp4.pre, %entry.if.end_crit_edge ], [ 1, %if.then ] 
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %tmp4) nounwind 
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
