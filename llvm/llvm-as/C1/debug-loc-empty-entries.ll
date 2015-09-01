

























define void @_Z3fn1v() #0 {
entry:
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !9, metadata !14), !dbg !15
  br label %for.cond, !dbg !16

for.cond:                                         
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !9, metadata !14), !dbg !15
  br label %for.cond, !dbg !17
}


declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { noreturn nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.7.0 (trunk 238517) (llvm/trunk 238524)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "<stdin>", directory: "/Users/dexonsmith/data/llvm/bootstrap/play/delta2/testcase")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "fn1", linkageName: "_Z3fn1v", scope: !5, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true, scopeLine: 1, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_Z3fn1v, variables: !8)
!5 = !DIFile(filename: "t.cpp", directory: "/Users/dexonsmith/data/llvm/bootstrap/play/delta2/testcase")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = !{!9}
!9 = !DILocalVariable(name: "a", scope: !4, file: !5, line: 2, type: !10)
!10 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.7.0 (trunk 238517) (llvm/trunk 238524)"}
!14 = !DIExpression()
!15 = !DILocation(line: 2, scope: !4)
!16 = !DILocation(line: 3, scope: !4)
!17 = !DILocation(line: 3, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !5, line: 3)
!19 = distinct !DILexicalBlock(scope: !4, file: !5, line: 3)
