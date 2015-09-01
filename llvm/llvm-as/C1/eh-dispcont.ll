






@_ZTIi = external constant i8*

define i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
entry:
  %exception = tail call i8* @__cxa_allocate_exception(i32 4) #1
  %0 = bitcast i8* %exception to i32*
  store i32 1, i32* %0, align 4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTIi to i8*), i8* null) #2
          to label %unreachable unwind label %lpad

lpad:                                             
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = tail call i8* @__cxa_begin_catch(i8* %2) #1
  tail call void @__cxa_end_catch()
  ret i32 0

unreachable:                                      
  unreachable
}

declare i8* @__cxa_allocate_exception(i32)

declare void @__cxa_throw(i8*, i8*, i8*)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

declare i32 @__gxx_personality_sj0(...)

attributes #0 = { ssp }
attributes #1 = { nounwind }
attributes #2 = { noreturn }















































