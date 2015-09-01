
































@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"step 1\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"step 2: %d\0A\00", align 1

define void @f(i32 %x) noreturn nounwind uwtable ssp {
entry:
  %cmp = icmp eq i32 %x, 1
  br i1 %cmp, label %for.cond.preheader, label %if.then

if.then:                                          
  %cmp1 = icmp eq i32 %x, 2
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str1, i64 0, i64 0)
  %call = tail call i32 @puts(i8* %cond) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               
  %cmp3 = icmp eq i32 %x, 2
  br label %for.cond

for.cond:                                         
  %call2 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str2, i64 0, i64 0)) nounwind
  br i1 %cmp3, label %for.cond.backedge, label %if.end5

if.end5:                                          
  %call6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str3, i64 0, i64 0), i32 %x) nounwind
  br label %for.cond.backedge

for.cond.backedge:                                
  br label %for.cond
}

declare i32 @puts(i8* nocapture) nounwind

declare i32 @printf(i8* nocapture, ...) nounwind
