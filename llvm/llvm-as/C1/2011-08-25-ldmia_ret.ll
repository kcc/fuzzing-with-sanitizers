










declare i32 @getint()
declare i1 @getbool()
declare void @foo(i32)
declare i32 @bar(i32)

define i32 @test(i32 %in1, i32 %in2) nounwind {
entry:
  %call = tail call zeroext i1 @getbool() nounwind
  br i1 %call, label %sw.bb18, label %sw.bb2

sw.bb2:                                           
  %cmp = tail call zeroext i1 @getbool() nounwind
  br i1 %cmp, label %sw.epilog58, label %land.lhs.true

land.lhs.true:                                    
  %cmp13 = tail call zeroext i1 @getbool() nounwind
  br i1 %cmp13, label %if.then, label %sw.epilog58

if.then:                                          
  tail call void @foo(i32 %in1) nounwind
  br label %sw.epilog58













sw.bb18:
  %call20 = tail call i32 @bar(i32 %in2) nounwind
  switch i32 %call20, label %sw.default56 [
    i32 168, label %sw.bb21
    i32 165, label %sw.bb21
    i32 261, label %sw.epilog58
    i32 188, label %sw.epilog58
    i32 187, label %sw.epilog58
    i32 186, label %sw.epilog58
    i32 185, label %sw.epilog58
    i32 184, label %sw.epilog58
    i32 175, label %sw.epilog58
    i32 174, label %sw.epilog58
    i32 173, label %sw.epilog58
    i32 172, label %sw.epilog58
    i32 171, label %sw.epilog58
    i32 167, label %sw.epilog58
    i32 166, label %sw.epilog58
    i32 164, label %sw.epilog58
    i32 163, label %sw.epilog58
    i32 161, label %sw.epilog58
    i32 160, label %sw.epilog58
    i32 -1, label %sw.bb33
  ]

sw.bb21:                                          
  tail call void @foo(i32 %in2) nounwind
  %call28 = tail call i32 @getint() nounwind
  %tobool = icmp eq i32 %call28, 0
  br i1 %tobool, label %if.then29, label %sw.epilog58

if.then29:                                        
  tail call void @foo(i32 %in2) nounwind
  br label %sw.epilog58

sw.bb33:                                          
  %cmp42 = tail call zeroext i1 @getbool() nounwind
  br i1 %cmp42, label %sw.default56, label %land.lhs.true44

land.lhs.true44:                                  
  %call50 = tail call i32 @getint() nounwind
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %sw.default56

if.then53:                                        
  tail call void @foo(i32 %in2) nounwind
  br label %sw.default56

sw.default56:                                     
  br label %sw.epilog58

sw.epilog58:
  %retval.0 = phi i32 [ 4, %sw.default56 ], [ 2, %sw.bb21 ], [ 2, %if.then29 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb18 ], [ 2, %sw.bb2 ], [ 2, %land.lhs.true ], [ 2, %if.then ]
  ret i32 %retval.0
}
