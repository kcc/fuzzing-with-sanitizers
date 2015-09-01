




declare void @foo()

define void @test_simple_call() gc "coreclr" {

entry:
  br label %other
other:



  call void @foo()
  ret void
}



declare void @do_safepoint()
define void @gc.safepoint_poll() {




entry:
  call void @do_safepoint()
  ret void
}
