

declare {i32, i1} @llvm.umul.with.overflow.i32(i32 %a, i32 %b)
define zeroext i1 @a(i32 %x)  nounwind {
  %res = call {i32, i1} @llvm.umul.with.overflow.i32(i32 %x, i32 3)
  %obil = extractvalue {i32, i1} %res, 1
  ret i1 %obil
  





}

define i32 @test2(i32 %a, i32 %b) nounwind readnone {
entry:
	%tmp0 = add i32 %b, %a
	%tmp1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %tmp0, i32 2)
	%tmp2 = extractvalue { i32, i1 } %tmp1, 0
	ret i32 %tmp2




}

define i32 @test3(i32 %a, i32 %b) nounwind readnone {
entry:
	%tmp0 = add i32 %b, %a
	%tmp1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %tmp0, i32 4)
	%tmp2 = extractvalue { i32, i1 } %tmp1, 0
	ret i32 %tmp2




}
