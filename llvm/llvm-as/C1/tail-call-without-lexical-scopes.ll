




































target datalayout = "e-m:w-p:32:32-i64:64-f80:32-n8:16:32-S32"
target triple = "i686-pc-win32"


define void @"\01?spam@@YAXXZ"() #0 {
entry:
  tail call void @"\01?bar@@YAXHZZ"(), !dbg !11
  ret void, !dbg !12
}


define internal void @"\01?bar@@YAXHZZ"() #0 {
entry:
  tail call void @"\01?foo@@YAXXZ"() #2, !dbg !13
  ret void, !dbg !14
}

declare void @"\01?foo@@YAXXZ"() #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: true, emissionKind: 2, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "test.cpp", directory: "D:\5C")
!2 = !{}
!3 = !{!4, !7}
!4 = distinct !DISubprogram(name: "spam", line: 7, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: true, scopeLine: 7, file: !1, scope: !5, type: !6, function: void ()* @"\01?spam@@YAXXZ", variables: !2)
!5 = !DIFile(filename: "test.cpp", directory: "D:C")
!6 = !DISubroutineType(types: !2)
!7 = distinct !DISubprogram(name: "bar", line: 3, isLocal: true, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: true, scopeLine: 3, file: !1, scope: !5, type: !6, variables: !2)
!8 = !{i32 2, !"CodeView", i32 1}
!9 = !{i32 1, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.5.0 "}
!11 = !DILocation(line: 8, scope: !4)
!12 = !DILocation(line: 9, scope: !4)
!13 = !DILocation(line: 4, scope: !7)
!14 = !DILocation(line: 5, scope: !7)
