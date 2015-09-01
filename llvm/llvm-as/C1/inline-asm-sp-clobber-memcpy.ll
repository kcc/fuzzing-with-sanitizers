

%struct.foo = type { [88 x i8] }

declare void @bar(i8* nocapture, %struct.foo* align 4 byval) nounwind



define void @test1(%struct.foo* nocapture %x, i32 %y, i8* %z) nounwind {
  call void @bar(i8* %z, %struct.foo* align 4 byval %x)
  call void asm sideeffect inteldialect "xor esp, esp", "=*m,~{flags},~{esp},~{esp},~{dirflag},~{fpsr},~{flags}"(i8* %z)
  ret void




}
