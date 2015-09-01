


declare void @g(i8*)

declare {}* @llvm.invariant.start(i64, i8* nocapture) nounwind readonly

define i8 @f() {
  %a = alloca i8                                  
  store i8 0, i8* %a
  %i = call {}* @llvm.invariant.start(i64 1, i8* %a) 
  
  call void @g(i8* %a)
  %r = load i8, i8* %a                                
  ret i8 %r
}
