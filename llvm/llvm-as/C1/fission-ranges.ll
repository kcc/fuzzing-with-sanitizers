
















































































@c = external global i32


define void @bar() #0 {
entry:
  tail call fastcc void @foo(), !dbg !27
  ret void, !dbg !28
}


define internal fastcc void @foo() #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !13, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !14, metadata !DIExpression()), !dbg !31
  %c.promoted9 = load i32, i32* @c, align 4, !dbg !32, !tbaa !33
  br label %for.cond1.preheader, !dbg !31

for.cond1.preheader:                              
  %and.lcssa.lcssa.lcssa10 = phi i32 [ %c.promoted9, %entry ], [ %and, %for.inc16 ]
  %a.08 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  br label %for.cond4.preheader, !dbg !37

for.cond4.preheader:                              
  %and.lcssa.lcssa7 = phi i32 [ %and.lcssa.lcssa.lcssa10, %for.cond1.preheader ], [ %and, %for.inc13 ]
  %d.06 = phi i32 [ 0, %for.cond1.preheader ], [ %inc14, %for.inc13 ]
  br label %for.cond7.preheader, !dbg !38

for.cond7.preheader:                              
  %and.lcssa5 = phi i32 [ %and.lcssa.lcssa7, %for.cond4.preheader ], [ %and, %for.inc10 ]
  %b.03 = phi i32 [ 0, %for.cond4.preheader ], [ %inc11, %for.inc10 ]
  br label %for.body9, !dbg !39

for.body9:                                        
  %and2 = phi i32 [ %and.lcssa5, %for.cond7.preheader ], [ %and, %for.body9 ], !dbg !40
  %e.01 = phi i32 [ 0, %for.cond7.preheader ], [ %inc, %for.body9 ]
  tail call void @llvm.dbg.value(metadata i32* @c, i64 0, metadata !19, metadata !DIExpression()), !dbg !40
  %and = and i32 %and2, 1, !dbg !32
  %inc = add i32 %e.01, 1, !dbg !39
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !18, metadata !DIExpression()), !dbg !39
  %exitcond = icmp eq i32 %inc, 30, !dbg !39
  br i1 %exitcond, label %for.inc10, label %for.body9, !dbg !39

for.inc10:                                        
  %inc11 = add nsw i32 %b.03, 1, !dbg !38
  tail call void @llvm.dbg.value(metadata i32 %inc11, i64 0, metadata !15, metadata !DIExpression()), !dbg !38
  %exitcond11 = icmp eq i32 %inc11, 30, !dbg !38
  br i1 %exitcond11, label %for.inc13, label %for.cond7.preheader, !dbg !38

for.inc13:                                        
  %inc14 = add i32 %d.06, 1, !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %inc14, i64 0, metadata !16, metadata !DIExpression()), !dbg !37
  %exitcond12 = icmp eq i32 %inc14, 30, !dbg !37
  br i1 %exitcond12, label %for.inc16, label %for.cond4.preheader, !dbg !37

for.inc16:                                        
  %inc17 = add nsw i32 %a.08, 1, !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %inc17, i64 0, metadata !14, metadata !DIExpression()), !dbg !31
  %exitcond13 = icmp eq i32 %inc17, 30, !dbg !31
  br i1 %exitcond13, label %for.end18, label %for.cond1.preheader, !dbg !31

for.end18:                                        
  store i32 %and, i32* @c, align 4, !dbg !32, !tbaa !33
  ret void, !dbg !42
}


declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.4 (trunk 191700) (llvm/trunk 191710)", isOptimized: true, splitDebugFilename: "small.dwo", emissionKind: 0, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "small.c", directory: "/usr/local/google/home/echristo/tmp")
!2 = !{}
!3 = !{!4, !8}
!4 = distinct !DISubprogram(name: "bar", line: 18, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: true, scopeLine: 19, file: !1, scope: !5, type: !6, function: void ()* @bar, variables: !2)
!5 = !DIFile(filename: "small.c", directory: "/usr/local/google/home/echristo/tmp")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = distinct !DISubprogram(name: "foo", line: 2, isLocal: true, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: true, scopeLine: 3, file: !1, scope: !5, type: !9, function: void ()* @foo, variables: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15, !16, !18, !19}
!13 = !DILocalVariable(name: "p", line: 2, arg: 1, scope: !8, file: !5, type: !11)
!14 = !DILocalVariable(name: "a", line: 4, scope: !8, file: !5, type: !11)
!15 = !DILocalVariable(name: "b", line: 4, scope: !8, file: !5, type: !11)
!16 = !DILocalVariable(name: "d", line: 5, scope: !8, file: !5, type: !17)
!17 = !DIBasicType(tag: DW_TAG_base_type, name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "e", line: 5, scope: !8, file: !5, type: !17)
!19 = !DILocalVariable(name: "w", line: 12, scope: !20, file: !5, type: !25)
!20 = distinct !DILexicalBlock(line: 11, column: 0, file: !1, scope: !21)
!21 = distinct !DILexicalBlock(line: 10, column: 0, file: !1, scope: !22)
!22 = distinct !DILexicalBlock(line: 9, column: 0, file: !1, scope: !23)
!23 = distinct !DILexicalBlock(line: 8, column: 0, file: !1, scope: !24)
!24 = distinct !DILexicalBlock(line: 7, column: 0, file: !1, scope: !8)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, baseType: !11)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !DILocation(line: 20, scope: !4)
!28 = !DILocation(line: 21, scope: !4)
!29 = !{i32 1}
!30 = !DILocation(line: 2, scope: !8)
!31 = !DILocation(line: 7, scope: !24)
!32 = !DILocation(line: 13, scope: !20)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 8, scope: !23)
!38 = !DILocation(line: 9, scope: !22)
!39 = !DILocation(line: 10, scope: !21)
!40 = !DILocation(line: 12, scope: !20)
!41 = !{i32* @c}
!42 = !DILocation(line: 15, scope: !8)
!43 = !{i32 1, !"Debug Info Version", i32 3}
!44 = !{i32 0}
