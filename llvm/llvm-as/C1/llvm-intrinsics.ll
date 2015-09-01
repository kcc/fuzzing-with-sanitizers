


declare i8* @llvm.frameaddress(i32) nounwind readnone
declare i8* @llvm.returnaddress(i32) nounwind
declare i8* @llvm.eh.dwarf.cfa(i32) nounwind
declare void @llvm.eh.return.i32(i32, i8*) nounwind
declare void @llvm.eh.unwind.init() nounwind

define i8* @FA0() nounwind {
entry:



  %0 = call i8* @llvm.frameaddress(i32 0)
  ret i8* %0
}

define i8* @FA1() nounwind {
entry:




  %0 = alloca [100 x i32]
  %1 = call i8* @llvm.frameaddress(i32 0)
  ret i8* %1
}

define i8* @RA0() nounwind {
entry:





  %0 = call i8* @llvm.returnaddress(i32 0)
  ret i8* %0
}

define i8* @RA1() nounwind {
entry:




  %0 = alloca [100 x i32]
  %1 = call i8* @llvm.returnaddress(i32 0)
  ret i8* %1
}


define i8* @FTAO0() nounwind {
entry:





  %0 = call i8* @llvm.eh.dwarf.cfa(i32 0)
  ret i8* %0
}

define i8* @FTAO1() nounwind {
entry:






  %0 = alloca [100 x i32]
  %1 = call i8* @llvm.eh.dwarf.cfa(i32 0)
  ret i8* %1
}

define i8* @EH0(i32 %offset, i8* %handler) {
entry:















  call void @llvm.eh.return.i32(i32 %offset, i8* %handler)
  unreachable
}

declare void @foo(...)
define i8* @EH1(i32 %offset, i8* %handler) {
entry:
























  call void (...) @foo()
  call void @llvm.eh.return.i32(i32 %offset, i8* %handler)
  unreachable
}

@offset = external constant i32
@handler = external constant i8
define i8* @EH2(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
entry:













  call void (...) @foo()
  %0 = load i32, i32* @offset
  call void @llvm.eh.return.i32(i32 %0, i8* @handler)
  unreachable
}











































define void @Unwind0() {
  call void @llvm.eh.unwind.init()
  ret void
}















































define void @Unwind1() {
  call void (...) @foo()
  call void @llvm.eh.unwind.init()
  ret void
}





































































































define void @UnwindEH(i32 %offset, i8* %handler) {
  call void @llvm.eh.unwind.init()
  %cmp = icmp eq i32 %offset, 0
  br i1 %cmp, label %normal, label %eh
eh:
  call void @llvm.eh.return.i32(i32 %offset, i8* %handler)
  unreachable
normal:
  ret void
}
