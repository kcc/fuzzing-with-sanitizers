






define void @foo(i32 %v) {

entry:

  call void @llvm.bar(metadata !{i32 %v})






  
  
  
  



  call void @llvm.bar(metadata !{i32 %v, i32 %v})
  call void @llvm.bar(metadata !{metadata !{i32 %v}})


  ret void, !baz !{i32 %v}
}

declare void @llvm.bar(metadata)


