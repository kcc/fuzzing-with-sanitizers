





@my_emutls_v_xyz = external global i8*, align 4
declare i8* @my_emutls_get_address(i8*)

define i32 @my_get_xyz() {









entry:
  %call = call i8* @my_emutls_get_address(i8* bitcast (i8** @my_emutls_v_xyz to i8*))
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

@i = thread_local global i32 15
@j = internal thread_local global i32 42
@k = internal thread_local global i32 0, align 8

define i32 @f1() {
entry:
  %tmp1 = load i32, i32* @i
  ret i32 %tmp1
}










@i2 = external thread_local global i32

define i32* @f2() {
entry:
  ret i32* @i
}





define i32 @f3() {
entry:
  %tmp1 = load i32, i32* @i  
  ret i32 %tmp1
}





define i32* @f4() nounwind {
entry:
  ret i32* @i
}





define i32 @f5() nounwind {
entry:
  %0 = load i32, i32* @j, align 4
  %1 = load i32, i32* @k, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}






















































































