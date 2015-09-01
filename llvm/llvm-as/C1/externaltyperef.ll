






















target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%class.A = type opaque

@a = global %class.A* null, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.7.0 (trunk 242039) (llvm/trunk 242046)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, globals: !5, imports: !11)
!1 = !DIFile(filename: "test.cpp", directory: "/")
!2 = !{}
!3 = !{!4, !9}
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !1, flags: DIFlagExternalTypeRef, identifier: "_ZTS1A")
!5 = !{!6}
!6 = !DIGlobalVariable(name: "a", scope: !0, file: !1, line: 2, type: !7, isLocal: false, isDefinition: true, variable: %class.A** @a)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1A", size: 64, align: 64)
!8 = !DICompositeType(tag: DW_TAG_class_type, name: "B", file: !1, flags: DIFlagExternalTypeRef, identifier: "_ZTS1B")
!9 = !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !1, flags: DIFlagExternalTypeRef, identifier: "_ZTSN1N1BE")
!10 = !DINamespace(name: "N", scope: null, file: !1, line: 1)
!11 = !{!12}
!12 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !"_ZTSN1N1BE", line: 4)
!13 = !{i32 2, !"Dwarf Version", i32 2}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"PIC Level", i32 2}
!16 = !{!"clang version 3.7.0 (trunk 242039) (llvm/trunk 242046)"}
