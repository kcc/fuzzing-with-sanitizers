





@G = external global float
define float @test0() nounwind {
  %t = load float, float* @G
  ret float %t
}




define void @test1({i32, i32, i32, i32}* sret %p) nounwind {
  store {i32, i32, i32, i32} zeroinitializer, {i32, i32, i32, i32}* %p
  ret void
}









@HHH = external global i32
define i32 @test2() nounwind {
  %t = load i32, i32* @HHH
  ret i32 %t
}


%struct.a = type { i64, i64, i64 }
define void @test3() nounwind ssp {
entry:
  %tmp = alloca %struct.a, align 8
  call void @test3sret(%struct.a* sret %tmp)
  ret void





}
declare void @test3sret(%struct.a* sret)


define void @test4() nounwind ssp {
entry:
  %tmp = alloca %struct.a, align 8
  call fastcc void @test4fastccsret(%struct.a* sret %tmp)
  ret void





}
declare fastcc void @test4fastccsret(%struct.a* sret)



define void @test5() {
entry:
  %call = call i32 @test5dllimport(i32 42)
  ret void









}
declare dllimport i32 @test5dllimport(i32)
