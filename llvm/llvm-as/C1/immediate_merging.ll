


@a = common global i32 0, align 4
@b = common global i32 0, align 4
@c = common global i32 0, align 4
@e = common global i32 0, align 4
@x = common global i32 0, align 4
@f = common global i32 0, align 4
@h = common global i32 0, align 4
@i = common global i32 0, align 4



define i32 @foo() optsize {









entry:
  store i32 1234, i32* @a
  store i32 1234, i32* @b
  store i32 12, i32* @c
  %0 = load i32, i32* @e
  %cmp = icmp eq i32 %0, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  store i32 1, i32* @x
  br label %if.end









if.end:                                           
  store i32 1234, i32* @f
  store i32 555, i32* @h
  %1 = load i32, i32* @i
  %add1 = add nsw i32 %1, 555
  store i32 %add1, i32* @i
  ret i32 0
}


define i32 @foo2() {




entry:
  store i32 1234, i32* @a
  store i32 1234, i32* @b

  ret i32 0
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

@AA = common global [100 x i8] zeroinitializer, align 1




define void @foomemset() optsize {




entry:
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @AA, i32 0, i32 0), i8 33, i32 24, i32 1, i1 false)
  ret void
}
