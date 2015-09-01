


@catchtypeinfo = external unnamed_addr constant { i8*, i8*, i8* }

define void @main() uwtable ssp personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  invoke void @f1()
          to label %try.cont19 unwind label %catch









catch:                                            
  %0 = landingpad { i8*, i32 }
          catch i8* bitcast ({ i8*, i8*, i8* }* @catchtypeinfo to i8*)
  invoke void @f3()
          to label %if.else unwind label %eh.resume

if.else:                                          
  invoke void @f2()
          to label %try.cont19 unwind label %catch

try.cont19:                                       
  ret void

eh.resume:                                        
  %1 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @catchtypeinfo to i8*)
  resume { i8*, i32 } undef
}

declare i32 @__gxx_personality_v0(...)

declare void @f1()

declare void @f2()

declare void @f3()
