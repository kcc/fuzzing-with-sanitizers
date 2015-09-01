






























































define void @foo(double %p0, 
                 double %p1, 
		 double %p2, 
		 double %p3, 
		 double %p4, 
		 double %p5, 
		 double %p6, 
		 double %p7, 
		 double %p8, 
		 i32 %p9) #0 { 
entry:
  call void @fooUseI32(i32 %p9)
  ret void
}

declare void @fooUseI32(i32)

define void @doFoo() {
entry:
  tail call void @foo(double 23.0, 
                      double 23.1, 
		      double 23.2, 
                      double 23.3, 
                      double 23.4, 
                      double 23.5, 
                      double 23.6, 
                      double 23.7, 
                      double 23.8, 
                      i32 43)      
  ret void
}

