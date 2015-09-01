




@G = external global i32                          
@array = external global i32*                     

define void @t() nounwind optsize {


entry:
  %.pre = load i32, i32* @G, align 4                   
  br label %bb

bb:                                               





  %0 = phi i32 [ %.pre, %entry ], [ %3, %bb ]     
  %indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ] 
  %tmp5 = sub i32 1000, %indvar                   
  %1 = load i32*, i32** @array, align 4                 
  %scevgep = getelementptr i32, i32* %1, i32 %tmp5     
  %2 = load i32, i32* %scevgep, align 4                
  %3 = add nsw i32 %2, %0                         
  store i32 %3, i32* @G, align 4
  %indvar.next = add i32 %indvar, 1               
  %exitcond = icmp eq i32 %indvar.next, 1001      
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}
