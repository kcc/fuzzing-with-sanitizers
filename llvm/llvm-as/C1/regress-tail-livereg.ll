
@var = global void()* zeroinitializer

declare void @bar()

define void @foo() {

       %func = load void()*, void()** @var

       
       
       
       
       call void @bar()

       tail call void %func()

       ret void
}



define void @test_x30_tail() {



  %addr = call i8* @llvm.returnaddress(i32 0)
  %faddr = bitcast i8* %addr to void()*
  tail call void %faddr()
  ret void
}

declare i8* @llvm.returnaddress(i32)
