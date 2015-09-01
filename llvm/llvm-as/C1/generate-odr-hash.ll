







































































































































































%struct.bar = type { i8 }
%"class.echidna::capybara::mongoose::fluffy" = type { i32, i32 }
%"struct.<anonymous namespace>::walrus" = type { i8 }
%struct.wombat = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.baz = type { i8 }

@b = global %struct.bar zeroinitializer, align 1
@_ZN7echidna8capybara8mongoose6animalE = global %"class.echidna::capybara::mongoose::fluffy" zeroinitializer, align 4
@w = internal global %"struct.<anonymous namespace>::walrus" zeroinitializer, align 1
@wom = global %struct.wombat zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]


define void @_Z3foov() #0 {
entry:
  %b = alloca %struct.baz, align 1
  call void @llvm.dbg.declare(metadata %struct.baz* %b, metadata !46, metadata !DIExpression()), !dbg !48
  ret void, !dbg !49
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZN12_GLOBAL__N_16walrusC2Ev(%"struct.<anonymous namespace>::walrus"* @w), !dbg !50
  ret void, !dbg !50
}


define internal void @_ZN12_GLOBAL__N_16walrusC2Ev(%"struct.<anonymous namespace>::walrus"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.<anonymous namespace>::walrus"*, align 8
  store %"struct.<anonymous namespace>::walrus"* %this, %"struct.<anonymous namespace>::walrus"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.<anonymous namespace>::walrus"** %this.addr, metadata !51, metadata !DIExpression()), !dbg !53
  %this1 = load %"struct.<anonymous namespace>::walrus"*, %"struct.<anonymous namespace>::walrus"** %this.addr
  ret void, !dbg !54
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init(), !dbg !55
  ret void, !dbg !55
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5 ", isOptimized: false, splitDebugFilename: "bar.dwo", emissionKind: 0, file: !1, enums: !2, retainedTypes: !3, subprograms: !21, globals: !38, imports: !2)
!1 = !DIFile(filename: "bar.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4, !6, !14, !17}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "bar", line: 1, size: 8, align: 8, file: !5, elements: !2, identifier: "_ZTS3bar")
!5 = !DIFile(filename: "bar.h", directory: "/tmp/dbginfo")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "fluffy", line: 13, size: 64, align: 32, file: !1, scope: !7, elements: !10, identifier: "_ZTSN7echidna8capybara8mongoose6fluffyE")
!7 = !DINamespace(name: "mongoose", line: 12, file: !1, scope: !8)
!8 = !DINamespace(name: "capybara", line: 11, file: !1, scope: !9)
!9 = !DINamespace(name: "echidna", line: 10, file: !1, scope: null)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "a", line: 14, size: 32, align: 32, flags: DIFlagPrivate, file: !1, scope: !"_ZTSN7echidna8capybara8mongoose6fluffyE", baseType: !12)
!12 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "b", line: 15, size: 32, align: 32, offset: 32, flags: DIFlagPrivate, file: !1, scope: !"_ZTSN7echidna8capybara8mongoose6fluffyE", baseType: !12)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "wombat", line: 31, size: 64, align: 32, file: !1, elements: !15, identifier: "_ZTS6wombat")
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "a_b", line: 35, size: 64, align: 32, file: !1, scope: !"_ZTS6wombat", baseType: !"_ZTSN6wombatUt_E")
!17 = !DICompositeType(tag: DW_TAG_structure_type, line: 32, size: 64, align: 32, file: !1, scope: !"_ZTS6wombat", elements: !18, identifier: "_ZTSN6wombatUt_E")
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "a", line: 33, size: 32, align: 32, file: !1, scope: !"_ZTSN6wombatUt_E", baseType: !12)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "b", line: 34, size: 32, align: 32, offset: 32, file: !1, scope: !"_ZTSN6wombatUt_E", baseType: !12)
!21 = !{!22, !26, !27, !36}
!22 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foov", line: 5, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !1, scope: !23, type: !24, function: void ()* @_Z3foov, variables: !2)
!23 = !DIFile(filename: "bar.cpp", directory: "/tmp/dbginfo")
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = distinct !DISubprogram(name: "__cxx_global_var_init", line: 29, isLocal: true, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 29, file: !1, scope: !23, type: !24, function: void ()* @__cxx_global_var_init, variables: !2)
!27 = distinct !DISubprogram(name: "walrus", linkageName: "_ZN12_GLOBAL__N_16walrusC2Ev", line: 25, isLocal: true, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 25, file: !1, scope: !28, type: !32, function: void (%"struct.<anonymous namespace>::walrus"*)* @_ZN12_GLOBAL__N_16walrusC2Ev, declaration: !31, variables: !2)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "walrus", line: 24, size: 8, align: 8, file: !1, scope: !29, elements: !30)
!29 = !DINamespace(line: 23, file: !1, scope: null)
!30 = !{!31}
!31 = !DISubprogram(name: "walrus", line: 25, isLocal: false, isDefinition: false, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 25, file: !1, scope: !28, type: !32)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer, baseType: !28)
!36 = distinct !DISubprogram(name: "", linkageName: "_GLOBAL__I_a", line: 25, isLocal: true, isDefinition: true, virtualIndex: 6, flags: DIFlagArtificial, isOptimized: false, scopeLine: 25, file: !1, scope: !23, type: !37, function: void ()* @_GLOBAL__I_a, variables: !2)
!37 = !DISubroutineType(types: !2)
!38 = !{!39, !40, !41, !42}
!39 = !DIGlobalVariable(name: "b", line: 3, isLocal: false, isDefinition: true, scope: null, file: !23, type: !4, variable: %struct.bar* @b)
!40 = !DIGlobalVariable(name: "animal", linkageName: "_ZN7echidna8capybara8mongoose6animalE", line: 18, isLocal: false, isDefinition: true, scope: !7, file: !23, type: !6, variable: %"class.echidna::capybara::mongoose::fluffy"* @_ZN7echidna8capybara8mongoose6animalE)
!41 = !DIGlobalVariable(name: "w", line: 29, isLocal: true, isDefinition: true, scope: null, file: !23, type: !28, variable: %"struct.<anonymous namespace>::walrus"* @w)
!42 = !DIGlobalVariable(name: "wom", line: 38, isLocal: false, isDefinition: true, scope: null, file: !23, type: !14, variable: %struct.wombat* @wom)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 1, !"Debug Info Version", i32 3}
!45 = !{!"clang version 3.5 "}
!46 = !DILocalVariable(name: "b", line: 7, scope: !22, file: !23, type: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "baz", line: 6, size: 8, align: 8, file: !1, scope: !22, elements: !2)
!48 = !DILocation(line: 7, scope: !22)
!49 = !DILocation(line: 8, scope: !22)
!50 = !DILocation(line: 29, scope: !26)
!51 = !DILocalVariable(name: "this", arg: 1, flags: DIFlagArtificial | DIFlagObjectPointer, scope: !27, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, baseType: !28)
!53 = !DILocation(line: 0, scope: !27)
!54 = !DILocation(line: 25, scope: !27)
!55 = !DILocation(line: 25, scope: !36)
