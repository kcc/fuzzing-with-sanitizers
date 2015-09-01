


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

@g_66 = global [1 x i32] zeroinitializer, align 4
@g_775 = global i32 0, align 4
@g_752 = global i32 0, align 4
@g_3 = global i32 0, align 4






define i32 @main() nounwind uwtable ssp {
entry:
  %l_2 = alloca [1 x i32], align 4
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %l_2, i64 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %tmp = load i32, i32* @g_3, align 4
  %idxprom = sext i32 %tmp to i64
  %arrayidx1 = getelementptr inbounds [1 x i32], [1 x i32]* %l_2, i64 0, i64 %idxprom
  %tmp1 = load i32, i32* %arrayidx1, align 4
  %conv.i.i = and i32 %tmp1, 65535
  %tobool.i.i.i = icmp ne i32 %tmp, 0
  br label %codeRepl

codeRepl.loopexit.us-lcssa:                       
  br label %codeRepl.loopexit

codeRepl.loopexit:                                
  br label %codeRepl

codeRepl:                                         
  br i1 %tobool.i.i.i, label %codeRepl.split.us, label %codeRepl.codeRepl.split_crit_edge

codeRepl.codeRepl.split_crit_edge:                
  br label %codeRepl.split

codeRepl.split.us:                                
  br label %for.cond.i.i.us

for.cond.i.i.us:                                  
  %tmp2 = phi i32 [ 0, %codeRepl.split.us ], [ %add.i.i.us, %for.inc.i.i.us ]
  br label %codeRepl5.us

for.inc.i.i.us:                                   
  %add.i.i.us = add nsw i32 %tmp2, 1
  store i32 %add.i.i.us, i32* @g_752, align 4
  br label %for.cond.i.i.us

for.body.i.i.us:                                  
  %div.i.i.i.us = udiv i32 1, %conv.i.i
  %cmp5.i.i.us = icmp eq i32 %div.i.i.i.us, %tmp2
  br i1 %cmp5.i.i.us, label %codeRepl.loopexit.us-lcssa.us, label %for.inc.i.i.us

codeRepl5.us:                                     
  br i1 true, label %codeRepl.loopexit.us-lcssa.us, label %for.body.i.i.us

codeRepl.loopexit.us-lcssa.us:                    
  br label %codeRepl.loopexit

codeRepl.split:                                   
  br label %for.cond.i.i

for.cond.i.i:                                     
  %tmp3 = phi i32 [ 0, %codeRepl.split ], [ %add.i.i, %for.inc.i.i ]
  br label %codeRepl5

codeRepl5:                                        
  br i1 true, label %codeRepl.loopexit.us-lcssa, label %for.body.i.i

for.body.i.i:                                     
  %cmp5.i.i = icmp eq i32 0, %tmp3
  br i1 %cmp5.i.i, label %codeRepl.loopexit.us-lcssa, label %for.inc.i.i

for.inc.i.i:                                      
  %add.i.i = add nsw i32 %tmp3, 1
  store i32 %add.i.i, i32* @g_752, align 4
  br label %for.cond.i.i

func_4.exit:                                      
  ret i32 0
}
