


@v = thread_local global i32 0
define i32 @f() nounwind {
entry:
          %t = load i32, i32* @v
          %s = add i32 %t, 1
          ret i32 %s
}





@alias = internal alias i32* @v
define i32 @f_alias() nounwind {
entry:
          %t = load i32, i32* @v
          %s = add i32 %t, 1
          ret i32 %s
}




