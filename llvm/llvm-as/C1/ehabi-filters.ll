
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv7-none-linux-gnueabi"

@_ZTIi = external constant i8*

declare void @_Z3foov() noreturn

declare i8* @__cxa_allocate_exception(i32)

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_throw(i8*, i8*, i8*)

declare void @__cxa_call_unexpected(i8*)

define i32 @main() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {

entry:
  %exception.i = tail call i8* @__cxa_allocate_exception(i32 4) nounwind
  %0 = bitcast i8* %exception.i to i32*
  store i32 42, i32* %0, align 4
  invoke void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTIi to i8*), i8* null) noreturn
          to label %unreachable.i unwind label %lpad.i

lpad.i:                                           
  %1 = landingpad { i8*, i32 }
          filter [1 x i8*] [i8* bitcast (i8** @_ZTIi to i8*)]
          catch i8* bitcast (i8** @_ZTIi to i8*)


  %2 = extractvalue { i8*, i32 } %1, 1
  %ehspec.fails.i = icmp slt i32 %2, 0
  br i1 %ehspec.fails.i, label %ehspec.unexpected.i, label %lpad.body

ehspec.unexpected.i:                              
  %3 = extractvalue { i8*, i32 } %1, 0
  invoke void @__cxa_call_unexpected(i8* %3) noreturn
          to label %.noexc unwind label %lpad

.noexc:                                           
  unreachable

unreachable.i:                                    
  unreachable

lpad:                                             
  %4 = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTIi to i8*)
  br label %lpad.body

lpad.body:                                        
  %eh.lpad-body = phi { i8*, i32 } [ %4, %lpad ], [ %1, %lpad.i ]
  %5 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  %6 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %5, %6
  br i1 %matches, label %try.cont, label %eh.resume

try.cont:                                         
  %7 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %8 = tail call i8* @__cxa_begin_catch(i8* %7) nounwind
  tail call void @__cxa_end_catch() nounwind
  ret i32 0

eh.resume:                                        
  resume { i8*, i32 } %eh.lpad-body
}

declare i32 @llvm.eh.typeid.for(i8*) nounwind readnone

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()
