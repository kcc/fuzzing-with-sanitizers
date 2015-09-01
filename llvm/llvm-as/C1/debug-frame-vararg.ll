






















!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.5 ", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "var.c", directory: "/tmp")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "sum", line: 5, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !1, scope: !5, type: !6, function: i32 (i32, ...)* @sum, variables: !2)
!5 = !DIFile(filename: "var.c", directory: "/tmp")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 1, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.5 "}
!12 = !DILocalVariable(name: "count", line: 5, arg: 1, scope: !4, file: !5, type: !8)
!13 = !DILocation(line: 5, scope: !4)
!14 = !DILocalVariable(name: "vl", line: 6, scope: !4, file: !5, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", line: 30, file: !16, baseType: !17)
!16 = !DIFile(filename: "/linux-x86_64-high/gcc_4.7.2/dbg/llvm/bin/../lib/clang/3.5/include/stdarg.h", directory: "/tmp")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", line: 6, file: !1, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", line: 6, size: 32, align: 32, file: !1, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", line: 6, size: 32, align: 32, file: !1, scope: !18, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 32, align: 32, baseType: null)
!22 = !DILocation(line: 6, scope: !4)
!23 = !DILocation(line: 7, scope: !4)
!24 = !DILocalVariable(name: "sum", line: 8, scope: !4, file: !5, type: !8)
!25 = !DILocation(line: 8, scope: !4)
!26 = !DILocalVariable(name: "i", line: 9, scope: !27, file: !5, type: !8)
!27 = distinct !DILexicalBlock(line: 9, column: 0, file: !1, scope: !4)
!28 = !DILocation(line: 9, scope: !27)
!29 = !DILocation(line: 10, scope: !30)
!30 = distinct !DILexicalBlock(line: 9, column: 0, file: !1, scope: !27)
!31 = !DILocation(line: 11, scope: !30)
!32 = !DILocation(line: 12, scope: !4)
!33 = !DILocation(line: 13, scope: !4)

















































define i32 @sum(i32 %count, ...) {
entry:
  %vl = alloca i8*, align 4
  %vl1 = bitcast i8** %vl to i8*
  call void @llvm.va_start(i8* %vl1)
  %cmp4 = icmp sgt i32 %count, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %ap.cur = load i8*, i8** %vl, align 4
  %ap.next = getelementptr i8, i8* %ap.cur, i32 4
  store i8* %ap.next, i8** %vl, align 4
  %0 = bitcast i8* %ap.cur to i32*
  %1 = load i32, i32* %0, align 4
  %call = call i32 @foo(i32 %1) #1
  %inc = add nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, %count
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  call void @llvm.va_end(i8* %vl1)
  ret i32 undef
}

declare void @llvm.va_start(i8*) nounwind

declare i32 @foo(i32)

declare void @llvm.va_end(i8*) nounwind
