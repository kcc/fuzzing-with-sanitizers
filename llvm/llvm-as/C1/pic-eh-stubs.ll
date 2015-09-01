






  


  

  



  




@_ZTIi = external constant i8*

define i32 @_Z3barv() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  invoke void @_Z3foov()
          to label %return unwind label %lpad

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %1 = extractvalue { i8*, i32 } %0, 1
  %2 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %1, %2
  br i1 %matches, label %catch, label %eh.resume

catch:                                            
  %3 = extractvalue { i8*, i32 } %0, 0
  %4 = tail call i8* @__cxa_begin_catch(i8* %3) nounwind
  %5 = bitcast i8* %4 to i32*
  %exn.scalar = load i32, i32* %5, align 4
  tail call void @__cxa_end_catch() nounwind
  br label %return

return:                                           
  %retval.0 = phi i32 [ %exn.scalar, %catch ], [ 42, %entry ]
  ret i32 %retval.0

eh.resume:                                        
  resume { i8*, i32 } %0
}

declare void @_Z3foov()

declare i32 @__gxx_personality_v0(...)

declare i32 @llvm.eh.typeid.for(i8*) nounwind readnone

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()
