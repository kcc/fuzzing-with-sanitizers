




































































declare void @_Z5printiiiii(i32, i32, i32, i32, i32)

declare void @_Z5printddddd(double, double, double, double, double)

define void @_Z4testiiiiiddddd(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e,
                               double %m, double %n, double %p,
                               double %q, double %r) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  invoke void @_Z5printiiiii(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e)
          to label %try.cont unwind label %lpad

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = tail call i8* @__cxa_begin_catch(i8* %1)
  invoke void @_Z5printddddd(double %m, double %n, double %p,
                             double %q, double %r)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:
  tail call void @__cxa_end_catch()
  br label %try.cont

try.cont:
  ret void

lpad1:
  %3 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:
  resume { i8*, i32 } %3

terminate.lpad:
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  tail call void @__clang_call_terminate(i8* %5)
  unreachable
}

declare void @__clang_call_terminate(i8*)

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

declare void @_ZSt9terminatev()

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5 ", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "exp.cpp", directory: "/tmp")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "test", linkageName: "_Z4testiiiiiddddd", line: 4, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !1, scope: !5, type: !6, function: void (i32, i32, i32, i32, i32, double, double, double, double, double)* @_Z4testiiiiiddddd, variables: !2)
!5 = !DIFile(filename: "exp.cpp", directory: "/tmp")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8, !8, !8, !8, !8, !9, !9, !9, !9, !9}
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 1, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.5 "}
!13 = !DILocalVariable(name: "a", line: 4, arg: 1, scope: !4, file: !5, type: !8)
!14 = !DILocation(line: 4, scope: !4)
!15 = !DILocalVariable(name: "b", line: 4, arg: 2, scope: !4, file: !5, type: !8)
!16 = !DILocalVariable(name: "c", line: 4, arg: 3, scope: !4, file: !5, type: !8)
!17 = !DILocalVariable(name: "d", line: 4, arg: 4, scope: !4, file: !5, type: !8)
!18 = !DILocalVariable(name: "e", line: 4, arg: 5, scope: !4, file: !5, type: !8)
!19 = !DILocalVariable(name: "m", line: 5, arg: 6, scope: !4, file: !5, type: !9)
!20 = !DILocation(line: 5, scope: !4)
!21 = !DILocalVariable(name: "n", line: 5, arg: 7, scope: !4, file: !5, type: !9)
!22 = !DILocalVariable(name: "p", line: 5, arg: 8, scope: !4, file: !5, type: !9)
!23 = !DILocalVariable(name: "q", line: 5, arg: 9, scope: !4, file: !5, type: !9)
!24 = !DILocalVariable(name: "r", line: 5, arg: 10, scope: !4, file: !5, type: !9)
!25 = !DILocation(line: 7, scope: !26)
!26 = distinct !DILexicalBlock(line: 6, column: 0, file: !1, scope: !4)
!27 = !DILocation(line: 8, scope: !26)
!28 = !DILocation(line: 11, scope: !26)
!29 = !DILocation(line: 9, scope: !30)
!30 = distinct !DILexicalBlock(line: 8, column: 0, file: !1, scope: !4)
!31 = !DILocation(line: 10, scope: !30)
!32 = !DILocation(line: 10, scope: !4)
!33 = !DILocation(line: 11, scope: !4)
!34 = !DILocation(line: 11, scope: !30)






























































































































































declare void @throw_exception_2()

define void @test2() {
entry:
  call void @throw_exception_2()
  ret void
}
























































































declare void @throw_exception_3(i32)

define i32 @test3(i32 %a, i32 %b, i32 %c, i32 %d,
                  i32 %e, i32 %f, i32 %g, i32 %h) {
entry:
  %add = add nsw i32 %b, %a
  %add1 = add nsw i32 %add, %c
  %add2 = add nsw i32 %add1, %d
  tail call void @throw_exception_3(i32 %add2)
  %add3 = add nsw i32 %f, %e
  %add4 = add nsw i32 %add3, %g
  %add5 = add nsw i32 %add4, %h
  tail call void @throw_exception_3(i32 %add5)
  %add6 = add nsw i32 %add5, %add2
  ret i32 %add6
}








































































































define void @test4() nounwind {
entry:
  ret void
}

































