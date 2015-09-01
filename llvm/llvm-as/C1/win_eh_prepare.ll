



declare void @maybe_throw()

@_ZTIi = external constant i8*
@g = external global i32

declare i32 @__C_specific_handler(...)
declare i32 @__gxx_personality_seh0(...)
declare i32 @llvm.eh.typeid.for(i8*) readnone nounwind

define i32 @use_seh() personality i32 (...)* @__C_specific_handler {
entry:
  invoke void @maybe_throw()
      to label %cont unwind label %lpad

cont:
  ret i32 0

lpad:
  %ehvals = landingpad { i8*, i32 }
      cleanup
      catch i8* bitcast (i32 (i8*, i8*)* @filt_g to i8*)
  %ehsel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_g_sel = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 (i8*, i8*)* @filt_g to i8*))
  %matches = icmp eq i32 %ehsel, %filt_g_sel
  br i1 %matches, label %ret1, label %eh.resume

ret1:
  ret i32 1

eh.resume:
  resume { i8*, i32 } %ehvals
}

define internal i32 @filt_g(i8*, i8*) {
  %g = load i32, i32* @g
  ret i32 %g
}












define i32 @use_gcc() personality i32 (...)* @__gxx_personality_seh0 {
entry:
  invoke void @maybe_throw()
      to label %cont unwind label %lpad

cont:
  ret i32 0

lpad:
  %ehvals = landingpad { i8*, i32 }
      cleanup
      catch i8* bitcast (i8** @_ZTIi to i8*)
  %ehsel = extractvalue { i8*, i32 } %ehvals, 1
  %filt_g_sel = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 (i8*, i8*)* @filt_g to i8*))
  %matches = icmp eq i32 %ehsel, %filt_g_sel
  br i1 %matches, label %ret1, label %eh.resume

ret1:
  ret i32 1

eh.resume:
  resume { i8*, i32 } %ehvals
}






