







target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7--windows-itanium"

define arm_aapcs_vfpcc void @function() {
entry:
  ret void, !dbg !0
}

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!9, !10}

!0 = !DILocation(line: 1, scope: !1)
!1 = distinct !DISubprogram(name: "function", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 1, file: !2, scope: !3, type: !4, function: void ()* @function, variables: !6)
!2 = !DIFile(filename: "/Users/compnerd/work/llvm/test/MC/ARM/reduced.c", directory: "/Users/compnerd/work/llvm")
!3 = !DIFile(filename: "/Users/compnerd/work/llvm/test/MC/ARM/reduced.c", directory: "/Users/compnerd/work/llvm")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = !{}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.5.0", isOptimized: false, emissionKind: 1, file: !2, enums: !6, retainedTypes: !6, subprograms: !8, globals: !6, imports: !6)
!8 = !{!1}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 1, !"Debug Info Version", i32 3}






















