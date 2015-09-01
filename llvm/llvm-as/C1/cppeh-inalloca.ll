


























%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%struct.A = type { i32 }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat













define i32 @"\01?test@@YAHUA@@@Z"(<{ %struct.A }>* inalloca) #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %retval = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %e = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  invoke void @"\01?may_throw@@YAXXZ"()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %try.cont








lpad:                                             
  %1 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  br label %catch.dispatch



catch.dispatch:                                   
  %sel = load i32, i32* %ehselector.slot
  %4 = call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)) #3
  %matches = icmp eq i32 %sel, %4
  br i1 %matches, label %catch, label %ehcleanup



catch:                                            
  %exn = load i8*, i8** %exn.slot
  %e.i8 = bitcast i32* %e to i8*
  call void @llvm.eh.begincatch(i8* %exn, i8* %e.i8) #3
  %a = getelementptr inbounds <{ %struct.A }>, <{ %struct.A }>* %0, i32 0, i32 0
  %a1 = getelementptr inbounds %struct.A, %struct.A* %a, i32 0, i32 0
  %tmp8 = load i32, i32* %a1, align 4
  %tmp9 = load i32, i32* %e, align 4
  %add = add nsw i32 %tmp8, %tmp9
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  call void @llvm.eh.endcatch() #3
  br label %cleanup

try.cont:                                         
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup








cleanup:                                          
  %a2 = getelementptr inbounds <{ %struct.A }>, <{ %struct.A }>* %0, i32 0, i32 0
  call x86_thiscallcc void @"\01??1A@@QAE@XZ"(%struct.A* %a2) #3
  %tmp10 = load i32, i32* %retval
  ret i32 %tmp10



ehcleanup:                                        
  %a3 = getelementptr inbounds <{ %struct.A }>, <{ %struct.A }>* %0, i32 0, i32 0
  call x86_thiscallcc void @"\01??1A@@QAE@XZ"(%struct.A* %a3) #3
  br label %eh.resume



eh.resume:                                        
  %exn2 = load i8*, i8** %exn.slot
  %sel3 = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn2, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel3, 1
  resume { i8*, i32 } %lpad.val4


}



































declare void @"\01?may_throw@@YAXXZ"() #0

declare i32 @__CxxFrameHandler3(...)


declare i32 @llvm.eh.typeid.for(i8*) #1

declare void @llvm.eh.begincatch(i8*, i8*)

declare void @llvm.eh.endcatch()


declare x86_thiscallcc void @"\01??1A@@QAE@XZ"(%struct.A*) #2

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 228868)"}
