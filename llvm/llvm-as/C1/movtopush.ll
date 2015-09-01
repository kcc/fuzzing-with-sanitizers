



%class.Class = type { i32 }
%struct.s = type { i64 }

declare void @good(i32 %a, i32 %b, i32 %c, i32 %d)
declare void @inreg(i32 %a, i32 inreg %b, i32 %c, i32 %d)
declare x86_thiscallcc void @thiscall(%class.Class* %class, i32 %a, i32 %b, i32 %c, i32 %d)
declare void @oneparam(i32 %a)
declare void @eightparams(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h)
declare void @struct(%struct.s* byval %a, i32 %b, i32 %c, i32 %d)










define void @test1() {
entry:
  call void @good(i32 1, i32 2, i32 3, i32 4)
  ret void
}


















define void @test1b() optsize {
entry:
  call void @good(i32 1, i32 2, i32 3, i32 4)
  ret void
}










define void @test1c() minsize {
entry:
  call void @good(i32 1, i32 2, i32 3, i32 4)
  ret void
}









define void @test2(i32 %k) {
entry:
  %a = alloca i32, i32 %k
  call void @good(i32 1, i32 2, i32 3, i32 4)
  ret void
}











define void @test2b() optsize {
entry:
  call void @good(i32 1024, i32 2048, i32 3072, i32 4096)
  ret void
}










define void @test3(i32 %k) optsize {
entry:
  %f = add i32 %k, 1
  call void @good(i32 %f, i32 2, i32 3, i32 4)
  ret void
}









define void @test4() optsize {
entry:
  call void @inreg(i32 1, i32 2, i32 3, i32 4)
  ret void
}









define void @test4b(%class.Class* %f) optsize {
entry:
  call x86_thiscallcc void @thiscall(%class.Class* %f, i32 1, i32 2, i32 3, i32 4)
  ret void
}










define void @test5(i32 %k) {
entry:
  %a = alloca i32, i32 %k
  call void @good(i32 1, i32 2, i32 3, i32 4)
  ret void
}












define void @test5b() optsize {
entry:
  call void @eightparams(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8)
  ret void
}






define void @test5c() optsize {
entry:
  call void @oneparam(i32 1)
  ret void
}







declare void @f(i8*)
@ext = external constant i8

define void @test6() {
  call void @f(i8* @ext)
  br label %bb
bb:
  alloca i32
  ret void
}











define void @test7(i32* %ptr) optsize {
entry:
  %val = load i32, i32* %ptr
  call void @good(i32 1, i32 2, i32 %val, i32 4)
  ret void
}












define void @test8(i32 %a, i32 %b) optsize {
entry:
  call void @good(i32 1, i32 %a, i32 %b, i32 4)
  ret void
}
























define void @test9() optsize {
entry:
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %s = alloca %struct.s, align 4  
  call void @good(i32 1, i32 2, i32 3, i32 4)
  %pv = ptrtoint i32* %p to i32
  %qv = ptrtoint i32* %q to i32
  call void @struct(%struct.s* byval %s, i32 6, i32 %qv, i32 %pv)
  ret void
}















define void @test10() optsize {
  %stack_fptr = alloca void (i32, i32, i32, i32)*
  store void (i32, i32, i32, i32)* @good, void (i32, i32, i32, i32)** %stack_fptr
  %good_ptr = load volatile void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %stack_fptr
  call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di}"()
  call void (i32, i32, i32, i32) %good_ptr(i32 1, i32 2, i32 3, i32 4)
  ret void
}












@the_global = external global i32
define void @test11() optsize {
  %myload = load i32, i32* @the_global
  store i32 42, i32* @the_global
  call void @good(i32 %myload, i32 2, i32 3, i32 4)
  ret void
}









define void @test12() optsize {
entry:
  %s = alloca %struct.s, align 4  
  call void @struct(%struct.s* %s, i32 2, i32 3, i32 4)
  call void @good(i32 5, i32 6, i32 7, i32 8)
  call void @struct(%struct.s* %s, i32 10, i32 11, i32 12)
  ret void
}





















define void @test12b() optsize {
entry:
  %s = alloca %struct.s, align 4  
  call void @good(i32 1, i32 2, i32 3, i32 4)  
  call void @struct(%struct.s* %s, i32 6, i32 7, i32 8)
  call void @good(i32 9, i32 10, i32 11, i32 12)
  ret void
}














define i32* @test13(i32* inreg %ptr1, i32* inreg %ptr2, i32* inreg %ptr3) optsize {
entry:
  %val1 = load i32, i32* %ptr1
  %val2 = load i32, i32* %ptr2
  %val3 = load i32, i32* %ptr3
  %add = add i32 %val1, %val2
  call void @good(i32 %val1, i32 %val2, i32 %val3, i32 %add)
  ret i32* %ptr3
}
