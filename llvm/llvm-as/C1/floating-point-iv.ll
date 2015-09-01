
define void @test1() nounwind {
entry:
	br label %bb

bb:		
	%x.0.reg2mem.0 = phi double [ 0.000000e+00, %entry ], [ %1, %bb ]		
	%0 = tail call i32 @foo(double %x.0.reg2mem.0) nounwind		
	%1 = fadd double %x.0.reg2mem.0, 1.000000e+00		
	%2 = fcmp olt double %1, 1.000000e+04		
	br i1 %2, label %bb, label %return

return:		
	ret void


}

declare i32 @foo(double)

define void @test2() nounwind {
entry:
	br label %bb

bb:		
	%x.0.reg2mem.0 = phi double [ -10.000000e+00, %entry ], [ %1, %bb ]		
	%0 = tail call i32 @foo(double %x.0.reg2mem.0) nounwind		
	%1 = fadd double %x.0.reg2mem.0, 2.000000e+00		
	%2 = fcmp olt double %1, -1.000000e+00		
	br i1 %2, label %bb, label %return

return:		
	ret void


}


define void @test3() nounwind {
entry:
	br label %bb

bb:		
	%x.0.reg2mem.0 = phi double [ 0.000000e+00, %entry ], [ %1, %bb ]
	%0 = tail call i32 @foo(double %x.0.reg2mem.0) nounwind
	%1 = fadd double %x.0.reg2mem.0, 1.000000e+00
	%2 = fcmp olt double %1, -1.000000e+00
	br i1 %2, label %bb, label %return

return:
	ret void


}

define void @test4() nounwind {
entry:
	br label %bb

bb:		
	%x.0.reg2mem.0 = phi double [ 40.000000e+00, %entry ], [ %1, %bb ]		
	%0 = tail call i32 @foo(double %x.0.reg2mem.0) nounwind		
	%1 = fadd double %x.0.reg2mem.0, -1.000000e+00		
	%2 = fcmp olt double %1, 1.000000e+00		
	br i1 %2, label %bb, label %return

return:
	ret void



}


define void @test5() nounwind {

  br label %1


  %2 = phi double [ 9.000000e+00, %0 ], [ %4, %1 ] 
  %3 = tail call i32 @foo(double 0.0)              
  %4 = fadd double %2, -1.000000e+00              
  %5 = fcmp ult double %4, 0.000000e+00           
  br i1 %5, label %exit, label %1

exit:
  ret void




}
