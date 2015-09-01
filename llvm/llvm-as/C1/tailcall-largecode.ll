

declare fastcc i32 @callee(i32 %arg)
define fastcc i32 @directcall(i32 %arg) {
entry:




  %res = tail call fastcc i32 @callee(i32 %arg)
  ret i32 %res
}



define fastcc i32 @indirect_manyargs(i32(i32,i32,i32,i32,i32,i32,i32)* %target) {




















  %res = tail call fastcc i32 %target(i32 1, i32 2, i32 3, i32 4, i32 5,
                                      i32 6, i32 7)
  ret i32 %res
}



declare fastcc i32 @manyargs_callee(i32,i32,i32,i32,i32,i32,i32)
define fastcc i32 @direct_manyargs() {






















  %res = tail call fastcc i32 @manyargs_callee(i32 1, i32 2, i32 3, i32 4,
                                               i32 5, i32 6, i32 7)
  ret i32 %res
}
