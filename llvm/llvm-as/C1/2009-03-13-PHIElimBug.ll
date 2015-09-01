



declare i32 @f()

declare i32 @g()

define i32 @phi() personality i32 (...)* @__gxx_personality_v0 {
entry:
	%a = call i32 @f()		
	%b = invoke i32 @g()
			to label %cont unwind label %lpad		

cont:		
	%x = phi i32 [ %b, %entry ]		
	%aa = call i32 @g()		
	%bb = invoke i32 @g()
			to label %cont2 unwind label %lpad		

cont2:		
	%xx = phi i32 [ %bb, %cont ]		
	ret i32 %xx

lpad:		
	%y = phi i32 [ %a, %entry ], [ %aa, %cont ]		
        %exn = landingpad {i8*, i32}
                 cleanup
	ret i32 %y
}





declare i32 @__gxx_personality_v0(...)
