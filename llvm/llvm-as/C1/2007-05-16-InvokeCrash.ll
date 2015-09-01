


define void @_ada_bench() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
	br label %cond_next
cond_next:		
	%indvar46 = phi i32 [ 0, %entry ], [ %indvar.next47, %cond_next ]		
	%indvar.next47 = add i32 %indvar46, 1		
	%exitcond48 = icmp eq i32 %indvar.next47, 10000		
	br i1 %exitcond48, label %cond_next40, label %cond_next
cond_next40:		
	%indvar43 = phi i32 [ %indvar.next44, %cond_next40 ], [ 0, %cond_next ]		
	%indvar.next44 = add i32 %indvar43, 1		
	%exitcond45 = icmp eq i32 %indvar.next44, 10000		
	br i1 %exitcond45, label %cond_next53, label %cond_next40
cond_next53:		
	%indvar41 = phi i32 [ %indvar.next42, %cond_next53 ], [ 0, %cond_next40 ]		
	%indvar.next42 = add i32 %indvar41, 1		
	%exitcond = icmp eq i32 %indvar.next42, 10000		
	br i1 %exitcond, label %bb67, label %cond_next53
bb67:		
	%tmp112 = invoke double @sin( double 5.000000e-01 )
			to label %bb114 unwind label %cleanup		
bb114:		
	%tmp147 = invoke double @log( double 5.000000e-01 )
			to label %bb149 unwind label %cleanup		
bb149:		
	%tmp175 = invoke double @sqrt( double 5.000000e-01 )
			to label %bb177 unwind label %cleanup		
bb177:		
	unreachable
cleanup:		
        %val = landingpad { i8*, i32 }
                 cleanup
	resume { i8*, i32 } %val
}

declare double @sin(double)

declare double @log(double)

declare double @sqrt(double)

declare i32 @__gxx_personality_v0(...)
