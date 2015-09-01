

@G = internal global i32 17             


define void @foo() {
        %V = load i32, i32* @G               
        store i32 %V, i32* @G
        ret void


}

define i32 @bar() {
        %X = load i32, i32* @G               
        ret i32 %X


}

@a = internal global i64* null, align 8



define void @qux() nounwind {
  %b = bitcast i64** @a to i8*
  %g = getelementptr i64*, i64** @a, i32 1
  %cmp = icmp ne i8* null, %b
  %cmp2 = icmp eq i8* null, %b
  %cmp3 = icmp eq i64** null, %g
  store i64* inttoptr (i64 1 to i64*), i64** @a, align 8
  %l = load i64*, i64** @a, align 8
  ret void



}

