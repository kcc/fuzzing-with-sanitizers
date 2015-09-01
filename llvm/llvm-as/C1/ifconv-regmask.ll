

%union.opcode = type { i32 }

@opcode = external global %union.opcode, align 4


define i32 @sfu() {
entry:
  %bf.load = load i32, i32* getelementptr inbounds (%union.opcode, %union.opcode* @opcode, i32 0, i32 0), align 4
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 7
  switch i32 %bf.clear, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            
  %call = tail call i32 @func0()
  br label %return

sw.bb1:                                           
  %call2 = tail call i32 @func1()
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -1, %entry ]
  ret i32 %retval.0
}


declare i32 @func0()


declare i32 @func1()
