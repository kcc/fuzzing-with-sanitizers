

define i32 @test0(i32 %X) {
  %tmp.1 = add i32 %X, 1
  ret i32 %tmp.1


}




define i32 @store_imm(i32* %a, i32* %b) {
entry:
  store i32 0, i32* %a, align 4
  %0 = getelementptr inbounds i32, i32* %b, i32 1
  store i32 0, i32* %0, align 4
  ret i32 0
}

@G = external global i8
define zeroext i8 @loadG() {
  %tmp = load i8, i8* @G
  ret i8 %tmp



}
