

declare x86_64_win64cc void @win64_callee(i32)
declare x86_64_win64cc void (i32)* @win64_indirect()
declare x86_64_win64cc void @win64_other(i32)
declare void @sysv_callee(i32)
declare void (i32)* @sysv_indirect()
declare void @sysv_other(i32)

define void @sysv_caller(i32 %p1) {
entry:
  tail call x86_64_win64cc void @win64_callee(i32 %p1)
  ret void
}







define x86_64_win64cc void @win64_caller(i32 %p1) {
entry:
  tail call void @sysv_callee(i32 %p1)
  ret void
}





define void @sysv_matched(i32 %p1) {
  tail call void @sysv_callee(i32 %p1)
  ret void
}




define x86_64_win64cc void @win64_matched(i32 %p1) {
  tail call x86_64_win64cc void @win64_callee(i32 %p1)
  ret void
}




define x86_64_win64cc void @win64_indirect_caller(i32 %p1) {
  %1 = call x86_64_win64cc void (i32)* @win64_indirect()
  call x86_64_win64cc void @win64_other(i32 0)
  tail call x86_64_win64cc void %1(i32 %p1)
  ret void
}




define void @sysv_indirect_caller(i32 %p1) {
  %1 = call void (i32)* @sysv_indirect()
  call void @sysv_other(i32 0)
  tail call void %1(i32 %p1)
  ret void
}



