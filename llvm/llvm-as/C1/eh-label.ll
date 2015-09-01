


declare void @g()

define void @f() personality i8* bitcast (void ()* @g to i8*) {
bb0:
  call void asm ".Lfunc_end0:", ""()




  invoke void @g() to label %bb2 unwind label %bb1
bb1:
  landingpad { i8*, i32 }
          catch i8* null
  call void @g()
  ret void
bb2:
  ret void



}
