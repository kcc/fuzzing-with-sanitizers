




define void @a() {
  ret void
}

define signext i32 @b(i32* inreg  %x)   {
  ret i32 0
}

define void @c(...) {
  ret void
}

define void @g(i32* %y) {


	%x = call i64 bitcast (i32 (i32*)* @b to i64 (i32)*)( i32 0 )		



  call void bitcast (void ()* @a to void (i32*)*)( i32* noalias  %y )
  call <2 x i32> bitcast (i32 (i32*)* @b to <2 x i32> (i32*)*)( i32* inreg  null )		
  call void bitcast (void (...)* @c to void (i32)*)( i32 0 )
  call void bitcast (void (...)* @c to void (i32)*)( i32 zeroext  0 )
  ret void
}
