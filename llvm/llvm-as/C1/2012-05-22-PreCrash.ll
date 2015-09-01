


define void @fn5(i16 signext %p1, i8 signext %p2) nounwind uwtable {
entry:
  br i1 undef, label %if.else, label %if.then

if.then:                                          
  br label %if.end

if.else:                                          
  %conv = sext i16 %p1 to i32
  br label %if.end

if.end:                                           
  %conv1 = sext i16 %p1 to i32
  br i1 undef, label %if.then3, label %if.else4

if.then3:                                         
  br label %if.end12

if.else4:                                         
  %conv7 = sext i8 %p2 to i32
  %cmp8 = icmp eq i32 %conv1, %conv7
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        
  br label %if.end12

if.end12:                                         
  %conv13 = sext i8 %p2 to i32
  ret void
}
