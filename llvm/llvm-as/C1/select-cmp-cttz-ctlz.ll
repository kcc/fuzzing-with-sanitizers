





define i16 @test1(i16 %x) {



entry:
  %0 = tail call i16 @llvm.ctlz.i16(i16 %x, i1 true)
  %tobool = icmp ne i16 %x, 0
  %cond = select i1 %tobool, i16 %0, i16 16
  ret i16 %cond
}

define i32 @test2(i32 %x) {



entry:
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i32 %0, i32 32
  ret i32 %cond
}

define i64 @test3(i64 %x) {



entry:
  %0 = tail call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %tobool = icmp ne i64 %x, 0
  %cond = select i1 %tobool, i64 %0, i64 64
  ret i64 %cond
}

define i16 @test4(i16 %x) {



entry:
  %0 = tail call i16 @llvm.ctlz.i16(i16 %x, i1 true)
  %tobool = icmp eq i16 %x, 0
  %cond = select i1 %tobool, i16 16, i16 %0
  ret i16 %cond
}

define i32 @test5(i32 %x) {



entry:
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  %tobool = icmp eq i32 %x, 0
  %cond = select i1 %tobool, i32 32, i32 %0
  ret i32 %cond
}

define i64 @test6(i64 %x) {



entry:
  %0 = tail call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %tobool = icmp eq i64 %x, 0
  %cond = select i1 %tobool, i64 64, i64 %0
  ret i64 %cond
}

define i16 @test1b(i16 %x) {



entry:
  %0 = tail call i16 @llvm.cttz.i16(i16 %x, i1 true)
  %tobool = icmp ne i16 %x, 0
  %cond = select i1 %tobool, i16 %0, i16 16
  ret i16 %cond
}

define i32 @test2b(i32 %x) {



entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 true)
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i32 %0, i32 32
  ret i32 %cond
}

define i64 @test3b(i64 %x) {



entry:
  %0 = tail call i64 @llvm.cttz.i64(i64 %x, i1 true)
  %tobool = icmp ne i64 %x, 0
  %cond = select i1 %tobool, i64 %0, i64 64
  ret i64 %cond
}

define i16 @test4b(i16 %x) {



entry:
  %0 = tail call i16 @llvm.cttz.i16(i16 %x, i1 true)
  %tobool = icmp eq i16 %x, 0
  %cond = select i1 %tobool, i16 16, i16 %0
  ret i16 %cond
}

define i32 @test5b(i32 %x) {



entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 true)
  %tobool = icmp eq i32 %x, 0
  %cond = select i1 %tobool, i32 32, i32 %0
  ret i32 %cond
}

define i64 @test6b(i64 %x) {



entry:
  %0 = tail call i64 @llvm.cttz.i64(i64 %x, i1 true)
  %tobool = icmp eq i64 %x, 0
  %cond = select i1 %tobool, i64 64, i64 %0
  ret i64 %cond
}

define i32 @test1c(i16 %x) {




entry:
  %0 = tail call i16 @llvm.cttz.i16(i16 %x, i1 true)
  %cast2 = zext i16 %0 to i32
  %tobool = icmp ne i16 %x, 0
  %cond = select i1 %tobool, i32 %cast2, i32 16
  ret i32 %cond
}

define i64 @test2c(i16 %x) {




entry:
  %0 = tail call i16 @llvm.cttz.i16(i16 %x, i1 true)
  %conv = zext i16 %0 to i64
  %tobool = icmp ne i16 %x, 0
  %cond = select i1 %tobool, i64 %conv, i64 16
  ret i64 %cond
}

define i64 @test3c(i32 %x) {




entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 true)
  %conv = zext i32 %0 to i64
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i64 %conv, i64 32
  ret i64 %cond
}

define i32 @test4c(i16 %x) {




entry:
  %0 = tail call i16 @llvm.ctlz.i16(i16 %x, i1 true)
  %cast = zext i16 %0 to i32
  %tobool = icmp ne i16 %x, 0
  %cond = select i1 %tobool, i32 %cast, i32 16
  ret i32 %cond
}

define i64 @test5c(i16 %x) {




entry:
  %0 = tail call i16 @llvm.ctlz.i16(i16 %x, i1 true)
  %cast = zext i16 %0 to i64
  %tobool = icmp ne i16 %x, 0
  %cond = select i1 %tobool, i64 %cast, i64 16
  ret i64 %cond
}

define i64 @test6c(i32 %x) {




entry:
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  %cast = zext i32 %0 to i64
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i64 %cast, i64 32
  ret i64 %cond
}

define i16 @test1d(i64 %x) {




entry:
  %0 = tail call i64 @llvm.cttz.i64(i64 %x, i1 true)
  %conv = trunc i64 %0 to i16
  %tobool = icmp ne i64 %x, 0
  %cond = select i1 %tobool, i16 %conv, i16 64
  ret i16 %cond
}

define i32 @test2d(i64 %x) {




entry:
  %0 = tail call i64 @llvm.cttz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i32
  %tobool = icmp ne i64 %x, 0
  %cond = select i1 %tobool, i32 %cast, i32 64
  ret i32 %cond
}

define i16 @test3d(i32 %x) {




entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 true)
  %cast = trunc i32 %0 to i16
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i16 %cast, i16 32
  ret i16 %cond
}

define i16 @test4d(i64 %x) {




entry:
  %0 = tail call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i16
  %tobool = icmp ne i64 %x, 0
  %cond = select i1 %tobool, i16 %cast, i16 64
  ret i16 %cond
}

define i32 @test5d(i64 %x) {




entry:
  %0 = tail call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %cast = trunc i64 %0 to i32
  %tobool = icmp ne i64 %x, 0
  %cond = select i1 %tobool, i32 %cast, i32 64
  ret i32 %cond
}

define i16 @test6d(i32 %x) {




entry:
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  %cast = trunc i32 %0 to i16
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i16 %cast, i16 32
  ret i16 %cond
}

define i64 @select_bug1(i32 %x) {




entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 false)
  %conv = zext i32 %0 to i64
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i64 %conv, i64 32
  ret i64 %cond
}

define i16 @select_bug2(i32 %x) {




entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 %x, i1 false)
  %conv = trunc i32 %0 to i16
  %tobool = icmp ne i32 %x, 0
  %cond = select i1 %tobool, i16 %conv, i16 32
  ret i16 %cond
}


declare i16 @llvm.ctlz.i16(i16, i1)
declare i32 @llvm.ctlz.i32(i32, i1)
declare i64 @llvm.ctlz.i64(i64, i1)
declare i16 @llvm.cttz.i16(i16, i1)
declare i32 @llvm.cttz.i32(i32, i1)
declare i64 @llvm.cttz.i64(i64, i1)
