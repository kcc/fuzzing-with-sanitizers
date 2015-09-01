

declare void @may_throw_or_crash()
declare i32 @_except_handler3(...)
declare i32 @_except_handler4(...)
declare i32 @__CxxFrameHandler3(...)
declare void @llvm.eh.begincatch(i8*, i8*)
declare void @llvm.eh.endcatch()
declare i32 @llvm.eh.typeid.for(i8*)

define internal i32 @catchall_filt() {
  ret i32 1
}

define void @use_except_handler3() personality i32 (...)* @_except_handler3 {
entry:
  invoke void @may_throw_or_crash()
      to label %cont unwind label %catchall
cont:
  ret void
catchall:
  %0 = landingpad { i8*, i32 }
      catch i8* bitcast (i32 ()* @catchall_filt to i8*)
  %1 = extractvalue { i8*, i32 } %0, 1
  %2 = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @catchall_filt to i8*)) #4
  %matches = icmp eq i32 %1, %2
  br i1 %matches, label %cont, label %eh.resume
eh.resume:
  resume { i8*, i32 } %0
}


























define void @use_except_handler4() personality i32 (...)* @_except_handler4 {
entry:
  invoke void @may_throw_or_crash()
      to label %cont unwind label %catchall
cont:
  ret void
catchall:
  %0 = landingpad { i8*, i32 }
      catch i8* bitcast (i32 ()* @catchall_filt to i8*)
  %1 = extractvalue { i8*, i32 } %0, 1
  %2 = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @catchall_filt to i8*)) #4
  %matches = icmp eq i32 %1, %2
  br i1 %matches, label %cont, label %eh.resume
eh.resume:
  resume { i8*, i32 } %0
}






























define void @use_CxxFrameHandler3() personality i32 (...)* @__CxxFrameHandler3 {
  invoke void @may_throw_or_crash()
      to label %cont unwind label %catchall
cont:
  ret void
catchall:
  %ehvals = landingpad { i8*, i32 }
      catch i8* null
  %ehptr = extractvalue { i8*, i32 } %ehvals, 0
  call void @llvm.eh.begincatch(i8* %ehptr, i8* null)
  call void @llvm.eh.endcatch()
  br label %cont
}






































