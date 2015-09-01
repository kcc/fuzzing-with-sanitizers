









declare void @cleanup()
declare i32 @filt()
declare void @might_crash()
declare i32 @__C_specific_handler(...)
declare i32 @llvm.eh.typeid.for(i8*)

define i32 @simple_except_store() personality i32 (...)* @__C_specific_handler {
entry:
  %retval = alloca i32
  store i32 0, i32* %retval
  invoke void @might_crash()
          to label %return unwind label %lpad

lpad:
  %ehvals = landingpad { i8*, i32 }
          catch i32 ()* @filt
  %sel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_sel = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @filt to i8*))
  %matches = icmp eq i32 %sel, %filt_sel
  br i1 %matches, label %__except, label %eh.resume

__except:
  store i32 1, i32* %retval
  br label %return

return:
  %r = load i32, i32* %retval
  ret i32 %r

eh.resume:
  resume { i8*, i32 } %ehvals
}







define i32 @catch_all() personality i32 (...)* @__C_specific_handler {
entry:
  %retval = alloca i32
  store i32 0, i32* %retval
  invoke void @might_crash()
          to label %return unwind label %lpad

lpad:
  %ehvals = landingpad { i8*, i32 }
          catch i8* null
  store i32 1, i32* %retval
  br label %return

return:
  %r = load i32, i32* %retval
  ret i32 %r
}











define i32 @except_phi() personality i32 (...)* @__C_specific_handler {
entry:
  invoke void @might_crash()
          to label %return unwind label %lpad

lpad:
  %ehvals = landingpad { i8*, i32 }
          catch i32 ()* @filt
  %sel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_sel = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @filt to i8*))
  %matches = icmp eq i32 %sel, %filt_sel
  br i1 %matches, label %return, label %eh.resume

return:
  %r = phi i32 [0, %entry], [1, %lpad]
  ret i32 %r

eh.resume:
  resume { i8*, i32 } %ehvals
}














define i32 @except_join() personality i32 (...)* @__C_specific_handler {
entry:
  invoke void @might_crash()
          to label %return unwind label %lpad

lpad:
  %ehvals = landingpad { i8*, i32 }
          catch i32 ()* @filt
  %sel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_sel = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @filt to i8*))
  %matches = icmp eq i32 %sel, %filt_sel
  br i1 %matches, label %return, label %eh.resume

return:
  ret i32 0

eh.resume:
  resume { i8*, i32 } %ehvals
}













define i32 @lpad_phi() personality i32 (...)* @__C_specific_handler {
entry:
  invoke void @might_crash()
          to label %cont unwind label %lpad

cont:
  invoke void @might_crash()
          to label %return unwind label %lpad

lpad:
  %ncalls.1 = phi i32 [ 0, %entry ], [ 1, %cont ]
  %ehvals = landingpad { i8*, i32 }
          catch i32 ()* @filt
  %sel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_sel = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @filt to i8*))
  %matches = icmp eq i32 %sel, %filt_sel
  br i1 %matches, label %return, label %eh.resume

return:
  %r = phi i32 [2, %cont], [%ncalls.1, %lpad]
  ret i32 %r

eh.resume:
  resume { i8*, i32 } %ehvals
}





















define i32 @cleanup_and_except() personality i32 (...)* @__C_specific_handler {
entry:
  invoke void @might_crash()
          to label %return unwind label %lpad

lpad:
  %ehvals = landingpad { i8*, i32 }
          cleanup
          catch i32 ()* @filt
  call void @cleanup()
  %sel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_sel = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @filt to i8*))
  %matches = icmp eq i32 %sel, %filt_sel
  br i1 %matches, label %return, label %eh.resume

return:
  %r = phi i32 [0, %entry], [1, %lpad]
  ret i32 %r

eh.resume:
  resume { i8*, i32 } %ehvals
}
























