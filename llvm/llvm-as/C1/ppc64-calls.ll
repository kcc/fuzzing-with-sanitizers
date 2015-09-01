
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define void @foo() nounwind readnone noinline {
  ret void
}

define weak void @foo_weak() nounwind {
  ret void
}


define void @test_direct() nounwind readnone {

  tail call void @foo() nounwind


  ret void
}



define void @test_weak() nounwind readnone {

  tail call void @foo_weak() nounwind


  ret void
}


define void @test_indirect(void ()* nocapture %fp) nounwind {

  tail call void %fp() nounwind






  ret void
}




define void @test_abs() nounwind {

  tail call void inttoptr (i64 1024 to void ()*)() nounwind






  ret void
}

declare double @sin(double) nounwind


define double @test_external(double %x) nounwind {

  %call = tail call double @sin(double %x) nounwind


  ret double %call
}



@g = external global void ()*
declare void @h(i64)
define void @test_indir_toc_reload(i64 %x) {
  %1 = load void ()*, void ()** @g
  call void %1()
  call void @h(i64 %x)
  ret void





}

