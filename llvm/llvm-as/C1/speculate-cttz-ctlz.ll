




define i64 @test1(i64 %A) {







entry:
  %tobool = icmp eq i64 %A, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i64 @llvm.ctlz.i64(i64 %A, i1 true)
  br label %cond.end

cond.end:                                         
  %cond = phi i64 [ %0, %cond.true ], [ 64, %entry ]
  ret i64 %cond
}

define i32 @test2(i32 %A) {







entry:
  %tobool = icmp eq i32 %A, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i32 @llvm.ctlz.i32(i32 %A, i1 true)
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ %0, %cond.true ], [ 32, %entry ]
  ret i32 %cond
}


define signext i16 @test3(i16 signext %A) {







entry:
  %tobool = icmp eq i16 %A, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i16 @llvm.ctlz.i16(i16 %A, i1 true)
  br label %cond.end

cond.end:                                         
  %cond = phi i16 [ %0, %cond.true ], [ 16, %entry ]
  ret i16 %cond
}


define i64 @test1b(i64 %A) {







entry:
  %tobool = icmp eq i64 %A, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i64 @llvm.cttz.i64(i64 %A, i1 true)
  br label %cond.end

cond.end:                                         
  %cond = phi i64 [ %0, %cond.true ], [ 64, %entry ]
  ret i64 %cond
}


define i32 @test2b(i32 %A) {







entry:
  %tobool = icmp eq i32 %A, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i32 @llvm.cttz.i32(i32 %A, i1 true)
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ %0, %cond.true ], [ 32, %entry ]
  ret i32 %cond
}


define signext i16 @test3b(i16 signext %A) {







entry:
  %tobool = icmp eq i16 %A, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i16 @llvm.cttz.i16(i16 %A, i1 true)
  br label %cond.end

cond.end:                                         
  %cond = phi i16 [ %0, %cond.true ], [ 16, %entry ]
  ret i16 %cond
}





define i64 @test1e(i32 %x) {








entry:
  %tobool = icmp eq i32 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 true)
  %phitmp2 = zext i32 %0 to i64
  br label %cond.end

cond.end:                                         
  %cond = phi i64 [ %phitmp2, %cond.true ], [ 32, %entry ]
  ret i64 %cond
}

define i32 @test2e(i64 %x) {








entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i64 @llvm.cttz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i32
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ %cast, %cond.true ], [ 64, %entry ]
  ret i32 %cond
}

define i64 @test3e(i32 %x) {








entry:
  %tobool = icmp eq i32 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  %phitmp2 = zext i32 %0 to i64
  br label %cond.end

cond.end:                                         
  %cond = phi i64 [ %phitmp2, %cond.true ], [ 32, %entry ]
  ret i64 %cond
}

define i32 @test4e(i64 %x) {








entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i32
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ %cast, %cond.true ], [ 64, %entry ]
  ret i32 %cond
}

define i16 @test5e(i64 %x) {








entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i16
  br label %cond.end

cond.end:                                         
  %cond = phi i16 [ %cast, %cond.true ], [ 64, %entry ]
  ret i16 %cond
}

define i16 @test6e(i32 %x) {








entry:
  %tobool = icmp eq i32 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  %cast = trunc i32 %0 to i16
  br label %cond.end

cond.end:                                         
  %cond = phi i16 [ %cast, %cond.true ], [ 32, %entry ]
  ret i16 %cond
}

define i16 @test7e(i64 %x) {








entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i64 @llvm.cttz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i16
  br label %cond.end

cond.end:                                         
  %cond = phi i16 [ %cast, %cond.true ], [ 64, %entry ]
  ret i16 %cond
}

define i16 @test8e(i32 %x) {








entry:
  %tobool = icmp eq i32 %x, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 true)
  %cast = trunc i32 %0 to i16
  br label %cond.end

cond.end:                                         
  %cond = phi i16 [ %cast, %cond.true ], [ 32, %entry ]
  ret i16 %cond
}


declare i64 @llvm.ctlz.i64(i64, i1)
declare i32 @llvm.ctlz.i32(i32, i1)
declare i16 @llvm.ctlz.i16(i16, i1)
declare i64 @llvm.cttz.i64(i64, i1)
declare i32 @llvm.cttz.i32(i32, i1)
declare i16 @llvm.cttz.i16(i16, i1)
