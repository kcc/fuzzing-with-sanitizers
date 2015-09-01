




@c = global i32 4, align 4
@d = global i32 9, align 4
@uc = global i32 4, align 4
@ud = global i32 9, align 4
@b1 = common global i32 0, align 4


define void @eq()  {
entry:


  %0 = load i32, i32* @c, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32









  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @ne()  {
entry:

  %0 = load i32, i32* @c, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp ne i32 %0, %1
  %conv = zext i1 %cmp to i32









  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @ugt()  {
entry:

  %0 = load i32, i32* @uc, align 4
  %1 = load i32, i32* @ud, align 4
  %cmp = icmp ugt i32 %0, %1
  %conv = zext i1 %cmp to i32








  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @ult()  {
entry:

  %0 = load i32, i32* @uc, align 4
  %1 = load i32, i32* @ud, align 4
  %cmp = icmp ult i32 %0, %1
  %conv = zext i1 %cmp to i32







  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @uge()  {
entry:

  %0 = load i32, i32* @uc, align 4
  %1 = load i32, i32* @ud, align 4
  %cmp = icmp uge i32 %0, %1
  %conv = zext i1 %cmp to i32








  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @ule()  {
entry:

  %0 = load i32, i32* @uc, align 4
  %1 = load i32, i32* @ud, align 4
  %cmp = icmp ule i32 %0, %1
  %conv = zext i1 %cmp to i32








  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @sgt()  {
entry:

  %0 = load i32, i32* @c, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32







  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @slt()  {
entry:

  %0 = load i32, i32* @c, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp slt i32 %0, %1
  %conv = zext i1 %cmp to i32







  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @sge()  {
entry:

  %0 = load i32, i32* @c, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp sge i32 %0, %1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4








  ret void
}


define void @sle()  {
entry:

  %0 = load i32, i32* @c, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp sle i32 %0, %1
  %conv = zext i1 %cmp to i32








  store i32 %conv, i32* @b1, align 4
  ret void
}
