











































target triple = "x86_64-unknown-linux-gnu"

@some_data = global i32 4, align 4
@some_other = global i32 5, section "strange+section", align 4
@some_bss = common global i32 0, align 4

define void @some_code() {
entry:
  %0 = load i32, i32* @some_data, align 4, !dbg !14
  %1 = load i32, i32* @some_other, align 4, !dbg !14
  %add = add nsw i32 %0, %1, !dbg !14
  %2 = load i32, i32* @some_bss, align 4, !dbg !14
  %add1 = add nsw i32 %2, %add, !dbg !14
  store i32 %add1, i32* @some_bss, align 4, !dbg !14
  ret void, !dbg !15
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.4 ", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !8, imports: !2)
!1 = !DIFile(filename: "test.c", directory: "/home/kayamon")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "some_code", line: 5, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 6, file: !1, scope: !5, type: !6, function: void ()* @some_code, variables: !2)
!5 = !DIFile(filename: "test.c", directory: "/home/kayamon")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = !{!9, !11, !12}
!9 = !DIGlobalVariable(name: "some_data", line: 1, isLocal: false, isDefinition: true, scope: null, file: !5, type: !10, variable: i32* @some_data)
!10 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariable(name: "some_other", line: 3, isLocal: false, isDefinition: true, scope: null, file: !5, type: !10, variable: i32* @some_other)
!12 = !DIGlobalVariable(name: "some_bss", line: 2, isLocal: false, isDefinition: true, scope: null, file: !5, type: !10, variable: i32* @some_bss)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !DILocation(line: 7, scope: !4)
!15 = !DILocation(line: 8, scope: !4)
!16 = !{i32 1, !"Debug Info Version", i32 3}
