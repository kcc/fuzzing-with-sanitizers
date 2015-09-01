


declare i32 @f()

define i32 @phi(i32 %x) personality i32 (...)* @__gxx_personality_v0 {
entry:
	%a = invoke i32 @f()
			to label %cont unwind label %lpad		

cont:		
	%b = invoke i32 @f()
			to label %cont2 unwind label %lpad		

cont2:		
	ret i32 %b

lpad:		
	%v = phi i32 [ %x, %entry ], [ %a, %cont ]		
        %exn = landingpad {i8*, i32}
                 cleanup
	ret i32 %v
}




declare i32 @__gxx_personality_v0(...)
