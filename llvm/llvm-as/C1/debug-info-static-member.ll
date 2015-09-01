





































%class.C = type { i32 }

@_ZN1C1aE = global i32 4, align 4
@_ZN1C1bE = global i32 2, align 4
@_ZN1C1cE = global i32 1, align 4

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %instance_C = alloca %class.C, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata %class.C* %instance_C, metadata !29, metadata !DIExpression()), !dbg !30
  %d = getelementptr inbounds %class.C, %class.C* %instance_C, i32 0, i32 0, !dbg !31
  store i32 8, i32* %d, align 4, !dbg !31
  %0 = load i32, i32* @_ZN1C1cE, align 4, !dbg !32
  ret i32 %0, !dbg !32
}

declare void @llvm.dbg.declare(metadata, metadata, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.3 (trunk 171914)", isOptimized: false, emissionKind: 0, file: !33, enums: !1, retainedTypes: !1, subprograms: !3, globals: !10, imports:  !1)
!1 = !{}
!3 = !{!5}
!5 = distinct !DISubprogram(name: "main", line: 18, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 23, file: !33, scope: !6, type: !7, function: i32 ()* @main, variables: !1)
!6 = !DIFile(filename: "/usr/local/google/home/blaikie/Development/llvm/src/tools/clang/test/CodeGenCXX/debug-info-static-member.cpp", directory: "/home/blaikie/local/Development/llvm/build/clang/x86-64/Debug/llvm")
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!12, !27, !28}
!12 = !DIGlobalVariable(name: "a", linkageName: "_ZN1C1aE", line: 14, isLocal: false, isDefinition: true, scope: null, file: !6, type: !9, variable: i32* @_ZN1C1aE, declaration: !15)
!13 = !DICompositeType(tag: DW_TAG_class_type, name: "C", line: 1, size: 32, align: 32, file: !33, elements: !14)
!14 = !{!15, !16, !19, !20, !23, !24, !26}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", line: 3, flags: DIFlagPrivate | DIFlagStaticMember, file: !33, scope: !13, baseType: !9)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "const_a", line: 4, flags: DIFlagPrivate | DIFlagStaticMember, file: !33, scope: !13, baseType: !17, extraData: i1 true)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(tag: DW_TAG_base_type, name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "b", line: 6, flags: DIFlagProtected | DIFlagStaticMember, file: !33, scope: !13, baseType: !9)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "const_b", line: 7, flags: DIFlagProtected | DIFlagStaticMember, file: !33, scope: !13, baseType: !21, extraData: float 0x40091EB860000000)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(tag: DW_TAG_base_type, name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "c", line: 9, flags: DIFlagPublic | DIFlagStaticMember, file: !33, scope: !13, baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "const_c", line: 10, flags: DIFlagPublic | DIFlagStaticMember, file: !33, scope: !13, baseType: !25, extraData: i32 18)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "d", line: 11, size: 32, align: 32, flags: DIFlagPublic, file: !33, scope: !13, baseType: !9)
!27 = !DIGlobalVariable(name: "b", linkageName: "_ZN1C1bE", line: 15, isLocal: false, isDefinition: true, scope: null, file: !6, type: !9, variable: i32* @_ZN1C1bE, declaration: !19)
!28 = !DIGlobalVariable(name: "c", linkageName: "_ZN1C1cE", line: 16, isLocal: false, isDefinition: true, scope: null, file: !6, type: !9, variable: i32* @_ZN1C1cE, declaration: !23)
!29 = !DILocalVariable(name: "instance_C", line: 20, scope: !5, file: !6, type: !13)
!30 = !DILocation(line: 20, scope: !5)
!31 = !DILocation(line: 21, scope: !5)
!32 = !DILocation(line: 22, scope: !5)
!33 = !DIFile(filename: "/usr/local/google/home/blaikie/Development/llvm/src/tools/clang/test/CodeGenCXX/debug-info-static-member.cpp", directory: "/home/blaikie/local/Development/llvm/build/clang/x86-64/Debug/llvm")



































































































































































!34 = !{i32 1, !"Debug Info Version", i32 3}
