

%struct.foo = type { [88 x i8] }

declare void @bar(i8* nocapture, %struct.foo* align 4 byval) nounwind
declare void @baz(i8*) nounwind



define void @test1(%struct.foo* nocapture %x, i32 %y) nounwind {
  %dynalloc = alloca i8, i32 %y, align 1
  call void @bar(i8* %dynalloc, %struct.foo* align 4 byval %x)
  ret void





}



define void @test2(%struct.foo* nocapture %x, i32 %y, i8* %z) nounwind {
  call void @bar(i8* %z, %struct.foo* align 4 byval %x)
  %dynalloc = alloca i8, i32 %y, align 1
  call void @baz(i8* %dynalloc)
  ret void




}


define void @test3(%struct.foo* nocapture %x, i32 %y, i8* %z) nounwind {
  call void @bar(i8* %z, %struct.foo* align 4 byval %x)
  %statalloc = alloca i8, i32 8, align 1
  call void @baz(i8* %statalloc)
  ret void



}
