




































































































































































































































%struct.C = type { i8 }
%"struct.ns::D" = type { i32 }

@_ZN1C22static_member_variableE = global i32 0, align 4
@global_variable = global %struct.C zeroinitializer, align 1
@_ZN2ns25global_namespace_variableE = global i32 1, align 4
@_ZN2ns1dE = global %"struct.ns::D" zeroinitializer, align 4
@_ZZ2f3vE1z = internal global i32 0, align 4
@_ZN12_GLOBAL__N_11iE = internal global i32 0, align 4
@_ZN12_GLOBAL__N_15inner1bE = internal global i32 0, align 4
@_ZN5outer12_GLOBAL__N_11cE = internal global i32 0, align 4


define void @_ZN1C15member_functionEv(%struct.C* %this) #0 align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.C** %this.addr, metadata !51, metadata !53), !dbg !54
  %this1 = load %struct.C*, %struct.C** %this.addr
  store i32 0, i32* @_ZN1C22static_member_variableE, align 4, !dbg !55
  ret void, !dbg !56
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1


define i32 @_ZN1C22static_member_functionEv() #0 align 2 {
entry:
  %0 = load i32, i32* @_ZN1C22static_member_variableE, align 4, !dbg !57
  ret i32 %0, !dbg !57
}


define i32 @_Z15global_functionv() #0 {
entry:
  ret i32 -1, !dbg !58
}


define void @_ZN2ns25global_namespace_functionEv() #0 {
entry:
  call void @_ZN1C15member_functionEv(%struct.C* @global_variable), !dbg !59
  ret void, !dbg !60
}


define i32* @_Z2f3v() #0 {
entry:
  ret i32* @_ZZ2f3vE1z, !dbg !61
}


define i32 @_Z2f7v() #0 {
entry:
  %0 = load i32, i32* @_ZN12_GLOBAL__N_11iE, align 4, !dbg !62
  %call = call i32* @_Z2f3v(), !dbg !62
  %1 = load i32, i32* %call, align 4, !dbg !62
  %add = add nsw i32 %0, %1, !dbg !62
  %2 = load i32, i32* @_ZN12_GLOBAL__N_15inner1bE, align 4, !dbg !62
  %add1 = add nsw i32 %add, %2, !dbg !62
  %3 = load i32, i32* @_ZN5outer12_GLOBAL__N_11cE, align 4, !dbg !62
  %add2 = add nsw i32 %add1, %3, !dbg !62
  ret i32 %add2, !dbg !62
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.7.0 (trunk 234897) (llvm/trunk 234911)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !19, globals: !31, imports: !44)
!1 = !DIFile(filename: "gnu-public-names.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4, !15}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "C", file: !1, line: 1, size: 8, align: 8, elements: !5, identifier: "_ZTS1C")
!5 = !{!6, !8, !12}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "static_member_variable", scope: !"_ZTS1C", file: !1, line: 4, baseType: !7, flags: DIFlagStaticMember)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "member_function", linkageName: "_ZN1C15member_functionEv", scope: !"_ZTS1C", file: !1, line: 2, type: !9, isLocal: false, isDefinition: false, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1C", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!12 = !DISubprogram(name: "static_member_function", linkageName: "_ZN1C22static_member_functionEv", scope: !"_ZTS1C", file: !1, line: 3, type: !13, isLocal: false, isDefinition: false, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false)
!13 = !DISubroutineType(types: !14)
!14 = !{!7}
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "D", scope: !16, file: !1, line: 29, size: 32, align: 32, elements: !17, identifier: "_ZTSN2ns1DE")
!16 = !DINamespace(name: "ns", scope: null, file: !1, line: 23)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !"_ZTSN2ns1DE", file: !1, line: 30, baseType: !7, size: 32, align: 32)
!19 = !{!20, !21, !22, !23, !26, !30}
!20 = distinct !DISubprogram(name: "member_function", linkageName: "_ZN1C15member_functionEv", scope: !"_ZTS1C", file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct.C*)* @_ZN1C15member_functionEv, declaration: !8, variables: !2)
!21 = distinct !DISubprogram(name: "static_member_function", linkageName: "_ZN1C22static_member_functionEv", scope: !"_ZTS1C", file: !1, line: 13, type: !13, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @_ZN1C22static_member_functionEv, declaration: !12, variables: !2)
!22 = distinct !DISubprogram(name: "global_function", linkageName: "_Z15global_functionv", scope: !1, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @_Z15global_functionv, variables: !2)
!23 = distinct !DISubprogram(name: "global_namespace_function", linkageName: "_ZN2ns25global_namespace_functionEv", scope: !16, file: !1, line: 24, type: !24, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_ZN2ns25global_namespace_functionEv, variables: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = distinct !DISubprogram(name: "f3", linkageName: "_Z2f3v", scope: !1, file: !1, line: 40, type: !27, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, function: i32* ()* @_Z2f3v, variables: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!30 = distinct !DISubprogram(name: "f7", linkageName: "_Z2f7v", scope: !1, file: !1, line: 57, type: !13, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @_Z2f7v, variables: !2)
!31 = !{!32, !33, !34, !35, !36, !37, !39, !41}
!32 = !DIGlobalVariable(name: "static_member_variable", linkageName: "_ZN1C22static_member_variableE", scope: !0, file: !1, line: 7, type: !7, isLocal: false, isDefinition: true, variable: i32* @_ZN1C22static_member_variableE, declaration: !6)
!33 = !DIGlobalVariable(name: "global_variable", scope: !0, file: !1, line: 17, type: !"_ZTS1C", isLocal: false, isDefinition: true, variable: %struct.C* @global_variable)
!34 = !DIGlobalVariable(name: "global_namespace_variable", linkageName: "_ZN2ns25global_namespace_variableE", scope: !16, file: !1, line: 27, type: !7, isLocal: false, isDefinition: true, variable: i32* @_ZN2ns25global_namespace_variableE)
!35 = !DIGlobalVariable(name: "d", linkageName: "_ZN2ns1dE", scope: !16, file: !1, line: 31, type: !"_ZTSN2ns1DE", isLocal: false, isDefinition: true, variable: %"struct.ns::D"* @_ZN2ns1dE)
!36 = !DIGlobalVariable(name: "z", scope: !26, file: !1, line: 41, type: !7, isLocal: true, isDefinition: true, variable: i32* @_ZZ2f3vE1z)
!37 = !DIGlobalVariable(name: "i", linkageName: "_ZN12_GLOBAL__N_11iE", scope: !38, file: !1, line: 37, type: !7, isLocal: true, isDefinition: true, variable: i32* @_ZN12_GLOBAL__N_11iE)
!38 = !DINamespace(scope: null, file: !1, line: 36)
!39 = !DIGlobalVariable(name: "b", linkageName: "_ZN12_GLOBAL__N_15inner1bE", scope: !40, file: !1, line: 47, type: !7, isLocal: true, isDefinition: true, variable: i32* @_ZN12_GLOBAL__N_15inner1bE)
!40 = !DINamespace(name: "inner", scope: !38, file: !1, line: 46)
!41 = !DIGlobalVariable(name: "c", linkageName: "_ZN5outer12_GLOBAL__N_11cE", scope: !42, file: !1, line: 53, type: !7, isLocal: true, isDefinition: true, variable: i32* @_ZN5outer12_GLOBAL__N_11cE)
!42 = !DINamespace(scope: !43, file: !1, line: 52)
!43 = !DINamespace(name: "outer", scope: null, file: !1, line: 51)
!44 = !{!45, !47}
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !46, line: 34)
!46 = !DIGlobalVariable(name: "global_namespace_variable_decl", linkageName: "_ZN2ns30global_namespace_variable_declE", scope: !16, file: !1, line: 28, type: !7, isLocal: false, isDefinition: false)
!47 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !43, entity: !42, line: 43)
!48 = !{i32 2, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{!"clang version 3.7.0 (trunk 234897) (llvm/trunk 234911)"}
!51 = !DILocalVariable(name: "this", arg: 1, scope: !20, type: !52, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS1C", size: 64, align: 64)
!53 = !DIExpression()
!54 = !DILocation(line: 0, scope: !20)
!55 = !DILocation(line: 10, scope: !20)
!56 = !DILocation(line: 11, scope: !20)
!57 = !DILocation(line: 14, scope: !21)
!58 = !DILocation(line: 20, scope: !22)
!59 = !DILocation(line: 25, scope: !23)
!60 = !DILocation(line: 26, scope: !23)
!61 = !DILocation(line: 42, scope: !26)
!62 = !DILocation(line: 58, scope: !30)
