


	%CF = type { %Register }
	%XXV = type { i32 (...)** }
	%Register = type { %"struct.XXC::BCFs", i32 }
	%"struct.XXC::BCFs" = type { i32 }

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind

define fastcc %XXV* @bar(%CF* %call_frame, %XXV** %exception) nounwind {
prologue:
	%param_x = load %XXV*, %XXV** null		
	%unique_1.i = ptrtoint %XXV* %param_x to i1		
	br i1 %unique_1.i, label %NextVerify42, label %FailedVerify

NextVerify42:		
	%param_y = load %XXV*, %XXV** null		
	%unique_1.i58 = ptrtoint %XXV* %param_y to i1		
	br i1 %unique_1.i58, label %function_setup.cont, label %FailedVerify

function_setup.cont:		
	br i1 false, label %label13, label %label

label:		
	%has_exn = icmp eq %XXV* null, null		
	br i1 %has_exn, label %kjsNumberLiteral.exit, label %handle_exception

kjsNumberLiteral.exit:		
	%0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 0, i32 0)		
	%intAdd = extractvalue { i32, i1 } %0, 0		
	%intAddOverflow = extractvalue { i32, i1 } %0, 1		
	%toint56 = ashr i32 %intAdd, 1		
	%toFP57 = sitofp i32 %toint56 to double		
	br i1 %intAddOverflow, label %rematerializeAdd, label %label13

label13:		
	%var_lr1.0 = phi double [ %toFP57, %kjsNumberLiteral.exit ], [ 0.000000e+00, %function_setup.cont ]		
	unreachable

FailedVerify:		
	ret %XXV* null

rematerializeAdd:		
	%rematerializedInt = sub i32 %intAdd, 0		
	ret %XXV* null

handle_exception:		
	ret %XXV* undef
}
