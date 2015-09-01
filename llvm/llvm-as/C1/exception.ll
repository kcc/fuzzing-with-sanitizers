





%struct.__fundamental_type_info_pseudo = type { %struct.__type_info_pseudo }
%struct.__type_info_pseudo = type { i8*, i8* }

@_ZTIi = external constant %struct.__fundamental_type_info_pseudo
@_ZTIf = external constant %struct.__fundamental_type_info_pseudo
@.cst = private unnamed_addr constant [12 x i8] c"catched int\00", align 64
@.cst1 = private unnamed_addr constant [14 x i8] c"catched float\00", align 64




























































define i32 @main(i32 %argc, i8** nocapture readnone %argv) unnamed_addr #0 personality i32 (i32, i64, i8*, i8*)* @__gxx_personality_v0 {
entry:
  %0 = icmp eq i32 %argc, 2
  %1 = tail call i8* @__cxa_allocate_exception(i32 4) #1
  br i1 %0, label %"3", label %"4"

"3":                                              
  %2 = bitcast i8* %1 to i32*
  store i32 0, i32* %2, align 4
  invoke void @__cxa_throw(i8* %1, i8* bitcast (%struct.__fundamental_type_info_pseudo* @_ZTIi to i8*), void (i8*)* null) #2
          to label %3 unwind label %"8"


  unreachable

"4":                                              
  %4 = bitcast i8* %1 to float*
  store float 1.000000e+00, float* %4, align 4


  invoke void @__cxa_throw(i8* %1, i8* bitcast (%struct.__fundamental_type_info_pseudo* @_ZTIf to i8*), void (i8*)* null) #2
          to label %5 unwind label %"8"


  unreachable

"5":                                              
  %6 = phi i32 [ 2, %"13" ], [ 0, %"11" ]
  ret i32 %6

"8":                                              
  %exc = landingpad { i8*, i32 }
          catch %struct.__fundamental_type_info_pseudo* @_ZTIi
          catch %struct.__fundamental_type_info_pseudo* @_ZTIf
  %exc_ptr12 = extractvalue { i8*, i32 } %exc, 0
  %filter13 = extractvalue { i8*, i32 } %exc, 1
  %typeid = tail call i32 @llvm.eh.typeid.for(i8* bitcast (%struct.__fundamental_type_info_pseudo* @_ZTIi to i8*))
  %7 = icmp eq i32 %filter13, %typeid
  br i1 %7, label %"11", label %8


  %typeid8 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (%struct.__fundamental_type_info_pseudo* @_ZTIf to i8*))
  %9 = icmp eq i32 %filter13, %typeid8
  br i1 %9, label %"13", label %"9"

"9":                                              
  resume { i8*, i32 } %exc

"11":                                             
  %10 = tail call i8* @__cxa_begin_catch(i8* %exc_ptr12) #1
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.cst, i32 0, i32 0))
  tail call void @__cxa_end_catch() #1
  br label %"5"

"13":                                             
  %12 = tail call i8* @__cxa_begin_catch(i8* %exc_ptr12) #1
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.cst1, i32 0, i32 0))
  tail call void @__cxa_end_catch() #1
  br label %"5"
}


declare i8* @__cxa_allocate_exception(i32) #1


declare void @__cxa_throw(i8*, i8*, void (i8*)*) #2

declare void @__cxa_end_catch()


declare i32 @llvm.eh.typeid.for(i8*) #3


declare i8* @__cxa_begin_catch(i8*) #1


declare i32 @puts(i8* nocapture readonly) #1

declare i32 @__gxx_personality_v0(i32, i64, i8*, i8*)

attributes #0 = { "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn }
attributes #3 = { nounwind readnone }
