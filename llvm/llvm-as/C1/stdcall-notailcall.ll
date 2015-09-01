

%struct.I = type { i32 (...)** }
define x86_stdcallcc void @bar(%struct.I* nocapture %this) ssp align 2 {



entry:
  tail call void @foo()
  ret void
}

define x86_thiscallcc void @test2(%struct.I*  %this, i32 %a) {



  tail call void @foo()
  ret void
}

declare void @foo()
