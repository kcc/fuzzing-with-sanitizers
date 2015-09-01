





define void @foo(i32* nocapture %d, i32 %n) nounwind {
entry:
	%0 = icmp sgt i32 %n, 0		
	br i1 %0, label %bb.nph, label %return

bb.nph:		
	br label %bb

bb:		
	%i.02 = phi i32 [ %5, %bb1 ], [ 0, %bb.nph ]		
	%p.01 = phi i8 [ %4, %bb1 ], [ -1, %bb.nph ]		
	%1 = sext i8 %p.01 to i32		
	%2 = sext i32 %i.02 to i64		
	%3 = getelementptr i32, i32* %d, i64 %2		
	store i32 %1, i32* %3, align 4
	%4 = add i8 %p.01, 1		
	%5 = add i32 %i.02, 1		
	br label %bb1

bb1:		
	%6 = icmp slt i32 %5, %n		
	br i1 %6, label %bb, label %bb1.return_crit_edge

bb1.return_crit_edge:		
	br label %return

return:		
	ret void
}









@.str = private constant [4 x i8] c"%d\0A\00"     

define i32 @main() nounwind {
entry:
  br label %for.cond

for.cond:                                         
  %g_4.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ] 
  %cmp = icmp slt i32 %g_4.0, 5                   
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %conv = trunc i32 %g_4.0 to i16                 
  %tobool.not = icmp eq i16 %conv, 0              
  %tobool3 = icmp ne i32 %g_4.0, 0                
  %or.cond = and i1 %tobool.not, %tobool3         
  br i1 %or.cond, label %for.end, label %for.inc

for.inc:                                          
  %add = add nsw i32 %g_4.0, 1                    
  br label %for.cond

for.end:                                          
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %g_4.0) nounwind 
  ret i32 0
}

declare i32 @printf(i8*, ...)

define void @test(i8* %a, i32 %n) nounwind {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   
  %tmp = zext i32 %n to i64
  br label %for.body

for.body:                                         
  %indvar = phi i64 [ %indvar.next, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr i8, i8* %a, i64 %indvar
  store i8 0, i8* %arrayidx, align 1
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp ne i64 %indvar.next, %tmp
  br i1 %exitcond, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       
  br label %for.end

for.end:                                          
  ret void
}









@a = common global i32 0, align 4

define i32 @pr19799() {
entry:
  store i32 -1, i32* @a, align 4
  br label %for.body.i

for.body.i:                                       
  %storemerge1.i = phi i32 [ -1, %entry ], [ %add.i.i, %for.cond.i ]
  %tobool.i = icmp eq i32 %storemerge1.i, 0
  %add.i.i = add nsw i32 %storemerge1.i, 2
  br i1 %tobool.i, label %bar.exit, label %for.cond.i

for.cond.i:                                       
  store i32 %add.i.i, i32* @a, align 4
  %cmp.i = icmp slt i32 %storemerge1.i, 0
  br i1 %cmp.i, label %for.body.i, label %bar.exit

bar.exit:                                         
  ret i32 0
}





@aa = global i64 0, align 8

define i32 @pr18886() {
entry:
  store i64 -21, i64* @aa, align 8
  br label %for.body

for.body:
  %storemerge1 = phi i64 [ -21, %entry ], [ %add, %for.cond ]
  %tobool = icmp eq i64 %storemerge1, 0
  %add = add nsw i64 %storemerge1, 8
  br i1 %tobool, label %return, label %for.cond

for.cond:
  store i64 %add, i64* @aa, align 8
  %cmp = icmp slt i64 %add, 9
  br i1 %cmp, label %for.body, label %return

return:
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}








@b = common global i32 0, align 4

define i32 @cannot_compute_mustexit() {
entry:
  store i32 -1, i32* @a, align 4
  br label %for.body.i

for.body.i:                                       
  %storemerge1.i = phi i32 [ -1, %entry ], [ %add.i.i, %for.cond.i ]
  %tobool.i = icmp eq i32 %storemerge1.i, 0
  %add.i.i = add nsw i32 %storemerge1.i, 2
  br i1 %tobool.i, label %bar.exit, label %for.cond.i

for.cond.i:                                       
  store i32 %add.i.i, i32* @a, align 4
  %ld = load volatile i32, i32* @b
  %cmp.i = icmp ne i32 %ld, 0
  br i1 %cmp.i, label %for.body.i, label %bar.exit

bar.exit:                                         
  ret i32 0
}







define i32 @two_mustexit() {
entry:
  store i32 -1, i32* @a, align 4
  br label %for.body.i

for.body.i:                                       
  %storemerge1.i = phi i32 [ -1, %entry ], [ %add.i.i, %for.cond.i ]
  %tobool.i = icmp sgt i32 %storemerge1.i, 0
  %add.i.i = add nsw i32 %storemerge1.i, 2
  br i1 %tobool.i, label %bar.exit, label %for.cond.i

for.cond.i:                                       
  store i32 %add.i.i, i32* @a, align 4
  %cmp.i = icmp slt i32 %storemerge1.i, 3
  br i1 %cmp.i, label %for.body.i, label %bar.exit

bar.exit:                                         
  ret i32 0
}
