

target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"














%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%eh.CatchHandlerType = type { i32, i8* }
%struct.HasDtor = type { i8 }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat
@llvm.eh.handlertype.H.0 = private unnamed_addr constant %eh.CatchHandlerType { i32 0, i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*) }, section "llvm.metadata"

define i32 @main() personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %o = alloca %struct.HasDtor, align 1
  invoke void @may_throw()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     
  call void @"\01??1HasDtor@@QEAA@XZ"(%struct.HasDtor* %o)
  br label %try.cont

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch %eh.CatchHandlerType* @llvm.eh.handlertype.H.0
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  br label %catch.dispatch

lpad1:                                            
  %3 = landingpad { i8*, i32 }
          cleanup
          catch %eh.CatchHandlerType* @llvm.eh.handlertype.H.0
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  invoke void @"\01??1HasDtor@@QEAA@XZ"(%struct.HasDtor* %o)
	  to label %catch.dispatch unwind label %lpad

catch.dispatch:                                   
  %exn.slot.0 = phi i8* [ %4, %lpad1 ], [ %1, %lpad ]
  %ehselector.slot.0 = phi i32 [ %5, %lpad1 ], [ %2, %lpad ]
  %6 = call i32 @llvm.eh.typeid.for(i8* bitcast (%eh.CatchHandlerType* @llvm.eh.handlertype.H.0 to i8*))
  %matches = icmp eq i32 %ehselector.slot.0, %6
  br i1 %matches, label %catch, label %eh.resume

catch:                                            
  call void @llvm.eh.begincatch(i8* %exn.slot.0, i8* null)
  call void @llvm.eh.endcatch()
  br label %try.cont

try.cont:                                         
  ret i32 0

eh.resume:                                        
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1
  resume { i8*, i32 } %lpad.val5
}








declare void @may_throw()

declare i32 @__CxxFrameHandler3(...)

declare void @"\01??1HasDtor@@QEAA@XZ"(%struct.HasDtor*)

declare i32 @llvm.eh.typeid.for(i8*)
declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture)
declare void @llvm.eh.endcatch()
