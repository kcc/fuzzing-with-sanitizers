

declare void @external_func()
declare void @abort()

@exception_inner = external global i8
@exception_outer = external global i8
@condition = external global i1






define internal void @inner_multiple_resume() personality i8* null {
  invoke void @external_func()
      to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %lp = landingpad i32
      catch i8* @exception_inner
  %cond = load i1, i1* @condition
  br i1 %cond, label %resume1, label %resume2
resume1:
  resume i32 1
resume2:
  resume i32 2
}

define void @outer_multiple_resume() personality i8* null {
  invoke void @inner_multiple_resume()
      to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %lp = landingpad i32
      catch i8* @exception_outer
  resume i32 %lp
}












define internal void @inner_resume_and_call() personality i8* null {
  call void @external_func()
  invoke void @external_func()
      to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %lp = landingpad i32
      catch i8* @exception_inner
  resume i32 %lp
}

define void @outer_resume_and_call() personality i8* null {
  invoke void @inner_resume_and_call()
      to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %lp = landingpad i32
      catch i8* @exception_outer
  resume i32 %lp
}














define internal void @inner_no_resume_or_call() personality i8* null {
  invoke void @external_func()
      to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %lp = landingpad i32
      catch i8* @exception_inner
  
  call void @abort() noreturn nounwind
  unreachable
}

define void @outer_no_resume_or_call() personality i8* null {
  invoke void @inner_no_resume_or_call()
      to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %lp = landingpad i32
      catch i8* @exception_outer
  resume i32 %lp
}






