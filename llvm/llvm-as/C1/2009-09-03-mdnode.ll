



declare void @f() nounwind

define i32 @main(...) nounwind {
entry:
  %retval = alloca i32                            
  call void @llvm.dbg.func.start(metadata !0)
  store i32 0, i32* %retval
  call void @llvm.dbg.stoppoint(i32 4, i32 5, metadata !1)
  call void @f()
  br label %return

return:                                           
  %0 = load i32, i32* %retval                          
  call void @llvm.dbg.stoppoint(i32 5, i32 1, metadata !1)
  call void @llvm.dbg.region.end(metadata !0)
  ret i32 %0
}

declare void @llvm.dbg.func.start(metadata) nounwind readnone

declare void @llvm.dbg.stoppoint(i32, i32, metadata) nounwind readnone

declare void @llvm.dbg.region.end(metadata) nounwind readnone

!0 = distinct !DISubprogram(name: "main", linkageName: "main", line: 2, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scope: !1)
!1 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "ellcc 0.1.0", isOptimized: true, emissionKind: 0, file: !2)
!2 = !DIFile(filename: "a.c", directory: "/home/rich/ellcc/test/source")
