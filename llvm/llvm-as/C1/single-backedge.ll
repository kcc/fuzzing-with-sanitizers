










define i32 @test(i1 %C) {

  br label %Loop, !dbg !6
Loop: 
  %IV = phi i32 [ 1, %0 ], [ %IV2, %BE1 ], [ %IV2, %BE2 ] 
  store i32 %IV, i32* null, !dbg !7
  %IV2 = add i32 %IV, 2, !dbg !8 
  br i1 %C, label %BE1, label %BE2, !dbg !9
BE1:  
  br label %Loop, !dbg !10
BE2:    
  br label %Loop, !dbg !11
}

!llvm.module.flags = !{!0, !1}
!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}

!2 = !{}
!3 = !DISubroutineType(types: !2)
!4 = !DIFile(filename: "atomic.cpp", directory: "/tmp")
!5 = distinct !DISubprogram(name: "test", scope: !4, file: !4, line: 99, type: !3, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!6 = !DILocation(line: 100, column: 1, scope: !5)
!7 = !DILocation(line: 101, column: 1, scope: !5)
!8 = !DILocation(line: 102, column: 1, scope: !5)
!9 = !DILocation(line: 103, column: 1, scope: !5)
!10 = !DILocation(line: 104, column: 1, scope: !5)
!11 = !DILocation(line: 105, column: 1, scope: !5)
