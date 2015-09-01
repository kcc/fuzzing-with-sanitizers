


%0 = type { void (...)* }

define internal x86_stdcallcc void @MyFunc() nounwind {
entry:


  ret void
}


define x86_stdcallcc i32 @"\01DoNotMangle"(i32 %a) {


entry:
  ret i32 %a
}

@B = global %0 { void (...)* bitcast (void ()* @MyFunc to void (...)*) }, align 4



