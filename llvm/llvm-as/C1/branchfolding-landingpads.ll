

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"







declare i32 @__gxx_personality_v0(...)
declare void @foo()


declare void @_throw()




define i32 @main(i8* %cleanup) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  invoke void @_throw() #0
          to label %unreachable unwind label %catch.dispatch9

catch.dispatch9:                                  
  %tmp13 = landingpad { i8*, i32 }
          cleanup
          catch i8* null
  invoke void @_throw() #0
          to label %unreachable unwind label %lpad31

lpad31:                                           
  %tmp20 = landingpad { i8*, i32 }
          cleanup
          catch i8* null
  call void @foo()
  unreachable

unreachable:                                      
  unreachable
}

attributes #0 = { noreturn }

