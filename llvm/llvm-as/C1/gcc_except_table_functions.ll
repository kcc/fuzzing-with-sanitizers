





declare i32 @__gxx_personality_v0(...)
declare void @filt0()
declare void @filt1()
declare void @_Z1fv()
declare i32 @llvm.eh.typeid.for(i8*)

define i32 @main() uwtable personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  invoke void @_Z1fv()
          to label %try.cont unwind label %lpad

try.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (void ()* @filt0 to i8*)
          catch i8* bitcast (void ()* @filt1 to i8*)
  %sel = extractvalue { i8*, i32 } %0, 1
  %id0 = call i32 @llvm.eh.typeid.for(i8* bitcast (void ()* @filt0 to i8*))
  %is_f0 = icmp eq i32 %sel, %id0
  br i1 %is_f0, label %try.cont, label %check_f1

check_f1:
  %id1 = call i32 @llvm.eh.typeid.for(i8* bitcast (void ()* @filt1 to i8*))
  %is_f1 = icmp eq i32 %sel, %id1
  br i1 %is_f1, label %try.cont, label %eh.resume

eh.resume:
  resume { i8*, i32 } %0
}
















