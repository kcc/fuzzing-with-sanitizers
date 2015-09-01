

target datalayout = "e-i64:64-f80:128-s:64-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare void @Foo(i8*)

define void @Bar() uwtable sanitize_address {
entry:













  
  
  
  
  

  
  
  
  




  %x = alloca [20 x i8], align 16
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %x, i64 0, i64 0
  call void @Foo(i8* %arraydecay)
  ret void
}


