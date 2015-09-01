


declare i32 @doo(...)



define void @test2(i8* %arrayidx) nounwind ssp {
entry:
  %xx = bitcast i8* %arrayidx to i32*
  %x1 = load i32, i32* %xx, align 4
  %tmp = trunc i32 %x1 to i8
  %conv = zext i8 %tmp to i32
  %cmp = icmp eq i32 %conv, 127
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  %arrayidx4 = getelementptr inbounds i8, i8* %arrayidx, i64 1
  %tmp5 = load i8, i8* %arrayidx4, align 1
  %conv6 = zext i8 %tmp5 to i32
  %cmp7 = icmp eq i32 %conv6, 69
  br i1 %cmp7, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   
  %arrayidx12 = getelementptr inbounds i8, i8* %arrayidx, i64 2
  %tmp13 = load i8, i8* %arrayidx12, align 1
  %conv14 = zext i8 %tmp13 to i32
  %cmp15 = icmp eq i32 %conv14, 76
  br i1 %cmp15, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  
  %arrayidx20 = getelementptr inbounds i8, i8* %arrayidx, i64 3
  %tmp21 = load i8, i8* %arrayidx20, align 1
  %conv22 = zext i8 %tmp21 to i32
  %cmp23 = icmp eq i32 %conv22, 70
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          
  %call25 = call i32 (...) @doo()
  br label %if.end

if.end:
  ret void





}




define void @test2a(i8* %arrayidx) nounwind ssp {
entry:
  %x1 = load i8, i8* %arrayidx, align 4
  %conv = zext i8 %x1 to i32
  %cmp = icmp eq i32 %conv, 127
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  %arrayidx4 = getelementptr inbounds i8, i8* %arrayidx, i64 1
  %tmp5 = load i8, i8* %arrayidx4, align 1
  %conv6 = zext i8 %tmp5 to i32
  %cmp7 = icmp eq i32 %conv6, 69
  br i1 %cmp7, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   
  %arrayidx12 = getelementptr inbounds i8, i8* %arrayidx, i64 2
  %tmp13 = load i8, i8* %arrayidx12, align 1
  %conv14 = zext i8 %tmp13 to i32
  %cmp15 = icmp eq i32 %conv14, 76
  br i1 %cmp15, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  
  %arrayidx20 = getelementptr inbounds i8, i8* %arrayidx, i64 3
  %tmp21 = load i8, i8* %arrayidx20, align 1
  %conv22 = zext i8 %tmp21 to i32
  %cmp23 = icmp eq i32 %conv22, 70
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          
  %call25 = call i32 (...) @doo()
  br label %if.end

if.end:
  ret void





}
