




define i32 @test1(i1 %a, i32* %b) {

entry:
  br i1 %a, label %lblock, label %rblock

lblock:
  %lbranch = getelementptr i32, i32* %b, i32 1
  br label %end

rblock:
  %rbranch = getelementptr i32, i32* %b, i32 1
  br label %end
  
end:

  %gep = phi i32* [%lbranch, %lblock], [%rbranch, %rblock]
  %r = load i32, i32* %gep

  ret i32 %r
}
