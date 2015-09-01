








declare i64 @llvm.readcyclecounter()

define i64 @get_count() {
  %val = call i64 @llvm.readcyclecounter()
  ret i64 %val

  
  






}
