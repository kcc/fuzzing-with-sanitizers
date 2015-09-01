


























































%struct.A = type { i32 (...)**, i32 }


define i32 @_Z3bari(i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = load i32, i32* %b.addr, align 4, !dbg !23
  %add = add nsw i32 %0, 4, !dbg !23
  ret i32 %add, !dbg !23
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

define void @_Z3baz1A(%struct.A* %a) #2 {
entry:
  %z = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.A* %a, metadata !24, metadata !DIExpression(DW_OP_deref)), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %z, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 2, i32* %z, align 4, !dbg !27
  %var = getelementptr inbounds %struct.A, %struct.A* %a, i32 0, i32 1, !dbg !28
  %0 = load i32, i32* %var, align 4, !dbg !28
  %cmp = icmp sgt i32 %0, 2, !dbg !28
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          
  %1 = load i32, i32* %z, align 4, !dbg !30
  %inc = add nsw i32 %1, 1, !dbg !30
  store i32 %inc, i32* %z, align 4, !dbg !30
  br label %if.end, !dbg !30

if.end:                                           
  %call = call signext i8 @_ZN1A3fooEv(%struct.A* %a), !dbg !31
  %conv = sext i8 %call to i32, !dbg !31
  %cmp1 = icmp eq i32 %conv, 97, !dbg !31
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !31

if.then2:                                         
  %2 = load i32, i32* %z, align 4, !dbg !33
  %inc3 = add nsw i32 %2, 1, !dbg !33
  store i32 %inc3, i32* %z, align 4, !dbg !33
  br label %if.end4, !dbg !33

if.end4:                                          
  ret void, !dbg !34
}

declare signext i8 @_ZN1A3fooEv(%struct.A*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 (210479)", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "debug-loc-offset1.cc", directory: "/llvm_cmake_gcc")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "bar", linkageName: "_Z3bari", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: i32 (i32)* @_Z3bari, variables: !2)
!5 = !DIFile(filename: "debug-loc-offset1.cc", directory: "/llvm_cmake_gcc")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 (210479)", isOptimized: false, emissionKind: 1, file: !10, enums: !2, retainedTypes: !11, subprograms: !13, globals: !2, imports: !2)
!10 = !DIFile(filename: "debug-loc-offset2.cc", directory: "/llvm_cmake_gcc")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "A", line: 1, flags: DIFlagFwdDecl, file: !10, identifier: "_ZTS1A")
!13 = !{!14}
!14 = distinct !DISubprogram(name: "baz", linkageName: "_Z3baz1A", line: 6, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 6, file: !10, scope: !15, type: !16, function: void (%struct.A*)* @_Z3baz1A, variables: !2)
!15 = !DIFile(filename: "debug-loc-offset2.cc", directory: "/llvm_cmake_gcc")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !12}
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{!"clang version 3.5.0 (210479)"}
!21 = !DILocalVariable(name: "b", line: 1, arg: 1, scope: !4, file: !5, type: !8)
!22 = !DILocation(line: 1, scope: !4)
!23 = !DILocation(line: 2, scope: !4)
!24 = !DILocalVariable(name: "a", line: 6, arg: 1, scope: !14, file: !15, type: !"_ZTS1A")
!25 = !DILocation(line: 6, scope: !14)
!26 = !DILocalVariable(name: "z", line: 7, scope: !14, file: !15, type: !8)
!27 = !DILocation(line: 7, scope: !14)
!28 = !DILocation(line: 8, scope: !29)
!29 = distinct !DILexicalBlock(line: 8, column: 0, file: !10, scope: !14)
!30 = !DILocation(line: 9, scope: !29)
!31 = !DILocation(line: 10, scope: !32)
!32 = distinct !DILexicalBlock(line: 10, column: 0, file: !10, scope: !14)
!33 = !DILocation(line: 11, scope: !32)
!34 = !DILocation(line: 12, scope: !14)
