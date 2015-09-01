




declare void @foo()

define void @test1() gc "statepoint-example" {


entry:


  br label %loop

loop:



  call void @foo()
  br label %loop
}


declare void @do_safepoint()
define void @gc.safepoint_poll() {

entry:
  call void @do_safepoint()
  ret void
}
