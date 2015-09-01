

declare void @bar() nounwind

define i32 @test1(i32* %a, i32 %b, i32* %c, i32 %d) nounwind {
entry:
  %tobool = icmp eq i32 %b, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  tail call void @bar() nounwind
  br label %if.end7

if.else:                                          
  %tobool3 = icmp eq i32 %d, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         
  tail call void @bar() nounwind
  br label %if.end7

if.end7:                                          
  %x.0 = phi i32* [ %a, %if.then ], [ %c, %if.then4 ], [ null, %if.else ]
  %tmp9 = load i32, i32* %x.0
  ret i32 %tmp9






}

define i32 @test2(i32* %a, i32 %b, i32* %c, i32 %d) nounwind {
entry:
  %tobool = icmp eq i32 %b, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  tail call void @bar() nounwind
  br label %if.end7

if.else:                                          
  %tobool3 = icmp eq i32 %d, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         
  tail call void @bar() nounwind
  br label %if.end7

if.end7:                                          
  %x.0 = phi i32* [ %a, %if.then ], [ null, %if.then4 ], [ null, %if.else ]
  %tmp9 = load i32, i32* %x.0
  ret i32 %tmp9





}

define i32 @test3(i32* %a, i32 %b, i32* %c, i32 %d) nounwind {
entry:
  %tobool = icmp eq i32 %b, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  tail call void @bar() nounwind
  br label %if.end7

if.else:                                          
  %tobool3 = icmp eq i32 %d, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         
  tail call void @bar() nounwind
  br label %if.end7

if.end7:                                          
  %x.0 = phi i32* [ %a, %if.then ], [ null, %if.then4 ], [ null, %if.else ]
  tail call void @bar() nounwind
  %tmp9 = load i32, i32* %x.0
  ret i32 %tmp9



}

define i32 @test4(i32* %a, i32 %b, i32* %c, i32 %d) nounwind {
entry:
  %tobool = icmp eq i32 %b, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  tail call void @bar() nounwind
  br label %if.end7

if.else:                                          
  %tobool3 = icmp eq i32 %d, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         
  tail call void @bar() nounwind
  br label %if.end7

if.end7:                                          
  %x.0 = phi i32* [ %a, %if.then ], [ null, %if.then4 ], [ null, %if.else ]
  %gep = getelementptr i32, i32* %x.0, i32 10
  %tmp9 = load i32, i32* %gep
  %tmp10 = or i32 %tmp9, 1
  store i32 %tmp10, i32* %gep
  ret i32 %tmp9


}
