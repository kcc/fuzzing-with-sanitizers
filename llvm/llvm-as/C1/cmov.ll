







@i1 = global [3 x i32] [i32 1, i32 2, i32 3], align 4
@i3 = common global i32* null, align 4






























define i32* @cmov1(i32 signext %s) nounwind readonly {
entry:
  %tobool = icmp ne i32 %s, 0
  %tmp1 = load i32*, i32** @i3, align 4
  %cond = select i1 %tobool, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @i1, i32 0, i32 0), i32* %tmp1
  ret i32* %cond
}

@c = global i32 1, align 4
@d = global i32 0, align 4






























define i32 @cmov2(i32 signext %s) nounwind readonly {
entry:
  %tobool = icmp ne i32 %s, 0
  %tmp1 = load i32, i32* @c, align 4
  %tmp2 = load i32, i32* @d, align 4
  %cond = select i1 %tobool, i32 %tmp1, i32 %tmp2
  ret i32 %cond
}























define i32 @cmov3(i32 signext %a, i32 signext %b, i32 signext %c) nounwind readnone {
entry:
  %cmp = icmp eq i32 %a, 234
  %cond = select i1 %cmp, i32 %b, i32 %c
  ret i32 %cond
}



























define i32 @cmov3_ne(i32 signext %a, i32 signext %b, i32 signext %c) nounwind readnone {
entry:
  %cmp = icmp ne i32 %a, 234
  %cond = select i1 %cmp, i32 %b, i32 %c
  ret i32 %cond
}































define i64 @cmov4(i32 signext %a, i64 %b, i64 %c) nounwind readnone {
entry:
  %cmp = icmp eq i32 %a, 234
  %cond = select i1 %cmp, i64 %b, i64 %c
  ret i64 %cond
}



































define i64 @cmov4_ne(i32 signext %a, i64 %b, i64 %c) nounwind readnone {
entry:
  %cmp = icmp ne i32 %a, 234
  %cond = select i1 %cmp, i64 %b, i64 %c
  ret i64 %cond
}





































define i32 @slti0(i32 signext %a) {
entry:
  %cmp = icmp sgt i32 %a, 32766
  %cond = select i1 %cmp, i32 3, i32 5
  ret i32 %cond
}

































define i32 @slti1(i32 signext %a) {
entry:
  %cmp = icmp sgt i32 %a, 32767
  %cond = select i1 %cmp, i32 7, i32 5
  ret i32 %cond
}





























define i32 @slti2(i32 signext %a) {
entry:
  %cmp = icmp sgt i32 %a, -32769
  %cond = select i1 %cmp, i32 3, i32 5
  ret i32 %cond
}





































define i32 @slti3(i32 signext %a) {
entry:
  %cmp = icmp sgt i32 %a, -32770
  %cond = select i1 %cmp, i32 3, i32 5
  ret i32 %cond
}









































define i64 @slti64_0(i64 %a) {
entry:
  %cmp = icmp sgt i64 %a, 32766
  %conv = select i1 %cmp, i64 5, i64 4
  ret i64 %conv
}








































define i64 @slti64_1(i64 %a) {
entry:
  %cmp = icmp sgt i64 %a, 32767
  %conv = select i1 %cmp, i64 5, i64 4
  ret i64 %conv
}






















define i64 @slti64_2(i64 %a) {
entry:
  %cmp = icmp sgt i64 %a, -32769
  %conv = select i1 %cmp, i64 3, i64 4
  ret i64 %conv
}























define i64 @slti64_3(i64 %a) {
entry:
  %cmp = icmp sgt i64 %a, -32770
  %conv = select i1 %cmp, i64 5, i64 4
  ret i64 %conv
}































define i32 @sltiu0(i32 signext %a) {
entry:
  %cmp = icmp ugt i32 %a, 32766
  %cond = select i1 %cmp, i32 3, i32 5
  ret i32 %cond
}

































define i32 @sltiu1(i32 signext %a) {
entry:
  %cmp = icmp ugt i32 %a, 32767
  %cond = select i1 %cmp, i32 7, i32 5
  ret i32 %cond
}





























define i32 @sltiu2(i32 signext %a) {
entry:
  %cmp = icmp ugt i32 %a, -32769
  %cond = select i1 %cmp, i32 3, i32 5
  ret i32 %cond
}





































define i32 @sltiu3(i32 signext %a) {
entry:
  %cmp = icmp ugt i32 %a, -32770
  %cond = select i1 %cmp, i32 3, i32 5
  ret i32 %cond
}







define i32 @slti4(i32 signext %a) nounwind readnone {
  %1 = icmp slt i32 %a, 7
  %2 = select i1 %1, i32 4, i32 3
  ret i32 %2
}





















define i32 @slti5(i32 signext %a) nounwind readnone {
  %1 = icmp slt i32 %a, 7
  %2 = select i1 %1, i32 -3, i32 -4
  ret i32 %2
}





















define i32 @slti6(i32 signext %a) nounwind readnone {
  %1 = icmp slt i32 %a, 7
  %2 = select i1 %1, i32 3, i32 4
  ret i32 %2
}









