
%struct.ua = type <{ i16, i32 }>

@foo = common global %struct.ua zeroinitializer, align 1

define i32 @main() nounwind {
entry:
  store i32 10, i32* getelementptr inbounds (%struct.ua, %struct.ua* @foo, i32 0, i32 1), align 1




  ret i32 0
}

