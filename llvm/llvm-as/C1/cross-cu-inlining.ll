
































































@i = external global i32


define i32 @main() #0 {
entry:
  %x.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32, i32* @i, align 4, !dbg !19
  %1 = bitcast i32* %x.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1)
  store i32 %0, i32* %x.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !120, metadata !DIExpression()), !dbg !21
  %2 = load i32, i32* %x.addr.i, align 4, !dbg !22
  %mul.i = mul nsw i32 %2, 2, !dbg !22
  %3 = bitcast i32* %x.addr.i to i8*, !dbg !22
  call void @llvm.lifetime.end(i64 4, i8* %3), !dbg !22
  ret i32 %mul.i, !dbg !19
}


define i32 @_Z4funci(i32 %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !20, metadata !DIExpression()), !dbg !23
  %0 = load i32, i32* %x.addr, align 4, !dbg !24
  %mul = mul nsw i32 %0, 2, !dbg !24
  ret i32 %mul, !dbg !24
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #2


declare void @llvm.lifetime.start(i64, i8* nocapture) #3


declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "a.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "main", line: 3, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 3, file: !1, scope: !5, type: !6, function: i32 ()* @main, variables: !2)
!5 = !DIFile(filename: "a.cpp", directory: "/tmp/dbginfo")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !10, enums: !2, retainedTypes: !2, subprograms: !11, globals: !2, imports: !2)
!10 = !DIFile(filename: "b.cpp", directory: "/tmp/dbginfo")
!11 = !{!12}
!12 = distinct !DISubprogram(name: "func", linkageName: "_Z4funci", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !10, scope: !13, type: !14, function: i32 (i32)* @_Z4funci, variables: !2)
!13 = !DIFile(filename: "b.cpp", directory: "/tmp/dbginfo")
!14 = !DISubroutineType(types: !15)
!15 = !{!8, !8}
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.5.0 "}
!19 = !DILocation(line: 4, scope: !4)
!20 = !DILocalVariable(name: "x", line: 1, arg: 1, scope: !12, file: !13, type: !8)

!120 = !DILocalVariable(name: "x", line: 1, arg: 1, scope: !12, file: !13, type: !8)

!21 = !DILocation(line: 1, scope: !12, inlinedAt: !19)
!22 = !DILocation(line: 2, scope: !12, inlinedAt: !19)
!23 = !DILocation(line: 1, scope: !12)
!24 = !DILocation(line: 2, scope: !12)

