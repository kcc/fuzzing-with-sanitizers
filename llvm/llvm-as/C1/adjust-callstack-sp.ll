







declare void @bar(i32*)

define void @foo(i32 %sz) {
  

    
    
    
  %a = alloca i32, i32 %sz
  call void @bar(i32* %a)
  ret void
}
