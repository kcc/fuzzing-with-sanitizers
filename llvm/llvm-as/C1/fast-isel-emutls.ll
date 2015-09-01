


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








@my_emutls_v_xyz = external global i8*, align 4
declare i8* @my_emutls_get_address(i8*)

define i32 @my_get_xyz() {
entry:
  %call = call i8* @my_emutls_get_address(i8* bitcast (i8** @my_emutls_v_xyz to i8*))
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}






