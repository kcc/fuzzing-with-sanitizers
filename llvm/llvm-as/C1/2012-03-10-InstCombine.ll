








define i32 @func(i8* %c, i8* %f) nounwind uwtable readnone noinline ssp {
entry:
  %d = alloca i8, align 1
  store i8 0, i8* %d, align 1
  %cmp = icmp ugt i8* %d, %c
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          
  %cmp2 = icmp ule i8* %d, %f
  %not.cmp1 = icmp uge i8* %c, %f
  %.cmp2 = and i1 %cmp2, %not.cmp1
  %land.ext = zext i1 %.cmp2 to i32
  br label %return

if.else:                                          
  %cmp5 = icmp uge i8* %d, %f
  %not.cmp3 = icmp ule i8* %c, %f
  %.cmp5 = and i1 %cmp5, %not.cmp3
  %land.ext7 = zext i1 %.cmp5 to i32
  br label %return

return:                                           
  %retval.0 = phi i32 [ %land.ext, %if.then ], [ %land.ext7, %if.else ]
  ret i32 %retval.0
}

