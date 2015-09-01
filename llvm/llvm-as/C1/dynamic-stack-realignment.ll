




















declare void @helper_01(i32, i32, i32, i32, i32*)


define void @func_01() {
entry:


  
  
  
  
  
  
  
  
  
  
  

  
  
  

  
  
  
  
  

  %a = alloca i32, align 512
  call void @helper_01(i32 0, i32 0, i32 0, i32 0, i32* %a)
  ret void
}

declare void @helper_02(i32, i32, i32, i32,
                        i32, i32, i32, i32, i32*)


define void @func_02() {
entry:


  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  

  
  
  
  
  
  
  

  %a = alloca i32, align 512
  call void @helper_02(i32 0, i32 0, i32 0, i32 0,
                       i32 0, i32 0, i32 0, i32 0, i32* %a)
  ret void
}



declare void @helper_03(i32, i32, i32, i32, i32*, i32*)


define void @func_03(i32 %p0, i32 %p1, i32 %p2, i32 %p3, i32* %b) {
entry:


  
  
  
  
  
  

  %a = alloca i32, align 512
  call void @helper_03(i32 0, i32 0, i32 0, i32 0, i32* %a, i32* %b)
  ret void
}

declare void @helper_04(i32, i32, i32, i32,
                        i32, i32, i32, i32, i32*, i32*)


define void @func_04(i32 %p0, i32 %p1, i32 %p2, i32 %p3,
                     i32 %p4, i32 %p5, i32 %p6, i32 %p7,
                     i32* %b) {
entry:


  
  
  
  
  
  
  

  %a = alloca i32, align 512
  call void @helper_04(i32 0, i32 0, i32 0, i32 0,
                       i32 0, i32 0, i32 0, i32 0, i32* %a, i32* %b)
  ret void
}




define void @func_05(i32 %sz) {
entry:


  
  
  
  
  
  
  
  
  
  

  
  
  

  
  
  
  
  

  %a0 = alloca i32, i32 %sz, align 512
  %a1 = alloca i32, align 4

  store volatile i32 111, i32* %a0, align 512
  store volatile i32 222, i32* %a1, align 4

  ret void
}


define void @func_06(i32 %sz) {
entry:


  
  
  
  
  
  
  
  
  
  
  

  
  
  

  
  
  
  
  
  

  %a0 = alloca i32, i32 %sz, align 512
  %a1 = alloca i32, align 4

  store volatile i32 111, i32* %a0, align 512
  store volatile i32 222, i32* %a1, align 4

  ret void
}





define void @func_07(i32 %p0, i32 %p1, i32 %p2, i32 %p3, i32 %sz) {
entry:


  
  
  
  
  
  
  
  

  %a0 = alloca i32, i32 %sz, align 512
  %a1 = alloca i32, align 4

  store volatile i32 111, i32* %a0, align 512
  store volatile i32 222, i32* %a1, align 4

  call void @helper_01(i32 0, i32 0, i32 0, i32 0, i32* %a1)

  ret void
}


define void @func_08(i32 %p0, i32 %p1, i32 %p2, i32 %p3,
                     i32 %p4, i32 %p5, i32 %p6, i32 %p7,
                     i32 %sz) {
entry:


  
  
  
  
  
  
  
  
  

  %a0 = alloca i32, i32 %sz, align 512
  %a1 = alloca i32, align 4

  store volatile i32 111, i32* %a0, align 512
  store volatile i32 222, i32* %a1, align 4

  call void @helper_02(i32 0, i32 0, i32 0, i32 0,
                       i32 0, i32 0, i32 0, i32 0, i32* %a1)
  ret void
}



define void @func_09() "no-realign-stack" {
entry:


  

  %a = alloca i32, align 512
  call void @helper_01(i32 0, i32 0, i32 0, i32 0, i32* %a)
  ret void
}

define void @func_10(i32 %sz) "no-realign-stack" {
entry:


  

  %a0 = alloca i32, i32 %sz, align 512
  %a1 = alloca i32, align 4

  store volatile i32 111, i32* %a0, align 512
  store volatile i32 222, i32* %a1, align 4

  ret void
}
