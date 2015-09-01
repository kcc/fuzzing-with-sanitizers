

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin8"





define i64 @test(i64 %x) nounwind {
entry:
	%tmp123 = and i64 %x, 4294967295		
	ret i64 %tmp123
}





define void @bbb(i64 %x) nounwind {
  %t = and i64 %x, 4294967295
  call void @foo(i64 %t)
  ret void
}







declare void @foo(i64 %x) nounwind

define void @ccc(i64 %x) nounwind {
  %t = and i64 %x, 4293918703
  call void @foo(i64 %t)
  ret void
}






define void @ddd(i64 %x) nounwind {
  %t = and i64 %x, 4294967296
  call void @foo(i64 %t)
  ret void
}
