






declare i32 @__CxxFrameHandler3(...)
declare void @nounwind_func() nounwind
declare void @cleanup()

define void @should_emit_tables() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @nounwind_func()
      to label %done unwind label %lpad

done:
  ret void

lpad:
  %vals = landingpad { i8*, i32 }
      cleanup
  call void @cleanup()
  resume { i8*, i32 } %vals
}










