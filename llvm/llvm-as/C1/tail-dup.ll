








@fn.codetable = internal unnamed_addr constant [3 x i8*] [i8* blockaddress(@fn, %RETURN), i8* blockaddress(@fn, %INCREMENT), i8* blockaddress(@fn, %DECREMENT)], align 4

define i32 @fn(i32* nocapture %opcodes) nounwind readonly ssp {
entry:
  %0 = load i32, i32* %opcodes, align 4
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @fn.codetable, i32 0, i32 %0
  br label %indirectgoto

INCREMENT:                                        
  %inc = add nsw i32 %result.0, 1
  %1 = load i32, i32* %opcodes.addr.0, align 4
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @fn.codetable, i32 0, i32 %1
  br label %indirectgoto

DECREMENT:                                        
  %dec = add nsw i32 %result.0, -1
  %2 = load i32, i32* %opcodes.addr.0, align 4
  %arrayidx4 = getelementptr inbounds [3 x i8*], [3 x i8*]* @fn.codetable, i32 0, i32 %2
  br label %indirectgoto

indirectgoto:                                     
  %result.0 = phi i32 [ 0, %entry ], [ %dec, %DECREMENT ], [ %inc, %INCREMENT ]
  %opcodes.pn = phi i32* [ %opcodes, %entry ], [ %opcodes.addr.0, %DECREMENT ], [ %opcodes.addr.0, %INCREMENT ]
  %indirect.goto.dest.in = phi i8** [ %arrayidx, %entry ], [ %arrayidx4, %DECREMENT ], [ %arrayidx2, %INCREMENT ]
  %opcodes.addr.0 = getelementptr inbounds i32, i32* %opcodes.pn, i32 1
  %indirect.goto.dest = load i8*, i8** %indirect.goto.dest.in, align 4
  indirectbr i8* %indirect.goto.dest, [label %RETURN, label %INCREMENT, label %DECREMENT]

RETURN:                                           
  ret i32 %result.0
}
