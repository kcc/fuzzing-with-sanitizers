





@int_typeinfo = global i8 0

declare void @might_throw()
declare void @cleanup()

define i32 @simple_cleanup_catch() personality i32 (...)* @__gxx_personality_v0 {
  invoke void @might_throw()
          to label %cont unwind label %lpad




cont:
  ret i32 0



lpad:
  %ehvals = landingpad { i8*, i32 }
      cleanup
      catch i8* @int_typeinfo
  %ehptr = extractvalue { i8*, i32 } %ehvals, 0
  %ehsel = extractvalue { i8*, i32 } %ehvals, 1
  call void @cleanup()
  %int_sel = call i32 @llvm.eh.typeid.for(i8* @int_typeinfo)
  %int_match = icmp eq i32 %ehsel, %int_sel
  br i1 %int_match, label %catch_int, label %eh.resume







catch_int:
  ret i32 1




eh.resume:
  %tmp_ehvals = insertvalue { i8*, i32 } undef, i8* %ehptr, 0
  %new_ehvals = insertvalue { i8*, i32 } %tmp_ehvals, i32 %ehsel, 1
  resume { i8*, i32 } %new_ehvals



}


define i32 @catch_no_resume() personality i32 (...)* @__gxx_personality_v0 {
  invoke void @might_throw()
          to label %cont unwind label %lpad

cont:
  ret i32 0

lpad:
  %ehvals = landingpad { i8*, i32 }
      catch i8* @int_typeinfo
  %ehptr = extractvalue { i8*, i32 } %ehvals, 0
  %ehsel = extractvalue { i8*, i32 } %ehvals, 1
  %int_sel = call i32 @llvm.eh.typeid.for(i8* @int_typeinfo)
  %int_match = icmp eq i32 %ehsel, %int_sel
  br i1 %int_match, label %catch_int, label %eh.resume

catch_int:
  ret i32 1

eh.resume:
  %tmp_ehvals = insertvalue { i8*, i32 } undef, i8* %ehptr, 0
  %new_ehvals = insertvalue { i8*, i32 } %tmp_ehvals, i32 %ehsel, 1
  resume { i8*, i32 } %new_ehvals
}














define i32 @catch_cleanup_merge() personality i32 (...)* @__gxx_personality_v0 {
  invoke void @might_throw()
          to label %inner_invoke unwind label %outer_lpad
inner_invoke:
  invoke void @might_throw()
          to label %cont unwind label %inner_lpad
cont:
  ret i32 0

outer_lpad:
  %ehvals1 = landingpad { i8*, i32 }
      catch i8* @int_typeinfo
  br label %catch.dispatch

inner_lpad:
  %ehvals2 = landingpad { i8*, i32 }
      cleanup
      catch i8* @int_typeinfo
  call void @cleanup()
  br label %catch.dispatch

catch.dispatch:
  %ehvals = phi { i8*, i32 } [ %ehvals1, %outer_lpad ], [ %ehvals2, %inner_lpad ]
  %ehptr = extractvalue { i8*, i32 } %ehvals, 0
  %ehsel = extractvalue { i8*, i32 } %ehvals, 1
  %int_sel = call i32 @llvm.eh.typeid.for(i8* @int_typeinfo)
  %int_match = icmp eq i32 %ehsel, %int_sel
  br i1 %int_match, label %catch_int, label %eh.resume

catch_int:
  ret i32 1

eh.resume:
  %tmp_ehvals = insertvalue { i8*, i32 } undef, i8* %ehptr, 0
  %new_ehvals = insertvalue { i8*, i32 } %tmp_ehvals, i32 %ehsel, 1
  resume { i8*, i32 } %new_ehvals
}

























declare i32 @__gxx_personality_v0(...)
declare i32 @llvm.eh.typeid.for(i8*)
