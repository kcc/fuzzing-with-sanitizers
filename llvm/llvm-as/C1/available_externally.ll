


@A = available_externally hidden constant i32 1
@B = external hidden constant i32

define i32 @t1() {
  %tmp = load i32, i32* @A
  store i32 %tmp, i32* @B
  ret i32 %tmp
}







