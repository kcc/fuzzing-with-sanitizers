









define i32 @foo(i1 %arg) {
entry:
  %c = call i32 @bar() readonly convergent
  br i1 %arg, label %then, label %end

then:
  ret i32 %c

end:
  ret i32 0
}

declare i32 @bar() readonly convergent

