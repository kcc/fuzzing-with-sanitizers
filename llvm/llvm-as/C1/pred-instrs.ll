




@a = external global i32
@d = external global i32


define i32 @test1(i8 zeroext %la, i8 zeroext %lb) {
entry:
  %cmp = icmp eq i8 %la, %lb
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %conv1 = zext i8 %la to i32
  %shl = shl nuw nsw i32 %conv1, 16
  br label %if.end

if.else:                                          
  %and8 = and i8 %lb, %la
  %and = zext i8 %and8 to i32
  br label %if.end

if.end:                                           
  %storemerge = phi i32 [ %and, %if.else ], [ %shl, %if.then ]
  store i32 %storemerge, i32* @a, align 4
  %0 = load i32, i32* @d, align 4
  ret i32 %0
}
