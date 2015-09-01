

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"

define i32 @test1() nounwind {
entry:


  %asmtmp.i = tail call i16 asm "movw\09%gs:${1:a}, ${0:w}", "=r,ir,~{dirflag},~{fpsr},~{flags}"(i32 6) nounwind 
  %0 = zext i16 %asmtmp.i to i32                  
  ret i32 %0
}

define zeroext i16 @test2(i32 %address) nounwind {
entry:


  %asmtmp = tail call i16 asm "movw\09%gs:${1:a}, ${0:w}", "=r,ir,~{dirflag},~{fpsr},~{flags}"(i32 %address) nounwind 
  ret i16 %asmtmp
}

@n = global i32 42                                
@y = common global i32 0                          

define void @test3() nounwind {
entry:


  call void asm sideeffect "movl ${0:a}, %eax", "ir,~{dirflag},~{fpsr},~{flags},~{eax}"(i32* @n) nounwind
  ret void
}

define void @test4() nounwind {
entry:



  call void asm sideeffect "movl ${0:a}, %eax", "ir,~{dirflag},~{fpsr},~{flags},~{eax}"(i32* @y) nounwind
  ret void
}
