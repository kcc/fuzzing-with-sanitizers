

%struct = type { }

@g = global i8 0



define internal zeroext i8 @foo(i8* inreg %p, i8 signext %y, ... )  nounwind {
  store i8 %y, i8* @g
  ret i8 0
}

define i32 @bar() {

  %A = call zeroext i8(i8*, i8, ...) @foo(i8* inreg null, i8 signext 1, %struct* byval null ) nounwind
  ret i32 0
}


