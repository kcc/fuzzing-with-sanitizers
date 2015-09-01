











@error = external global i8

define void @_ada_x() personality i8* bitcast (i32 (...)* @__gnat_eh_personality to i8*) {
entry:
  invoke void @raise()
          to label %eh_then unwind label %unwind

unwind:                                           
  %eh_ptr = landingpad { i8*, i32 }
              catch i8* @error
  %eh_select = extractvalue { i8*, i32 } %eh_ptr, 1
  %eh_typeid = tail call i32 @llvm.eh.typeid.for(i8* @error)
  %tmp2 = icmp eq i32 %eh_select, %eh_typeid
  br i1 %tmp2, label %eh_then, label %Unwind

eh_then:                                          
  ret void

Unwind:                                           
  resume { i8*, i32 } %eh_ptr
}

declare void @raise()

declare i32 @llvm.eh.typeid.for(i8*) nounwind

declare i32 @__gnat_eh_personality(...)

declare i32 @_Unwind_Resume(...)
