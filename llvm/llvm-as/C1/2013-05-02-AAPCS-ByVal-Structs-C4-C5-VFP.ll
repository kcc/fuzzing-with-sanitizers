



%st_t = type { i32, i32 }
@static_val = constant %st_t { i32 777, i32 888}

declare void @fooUseStruct(%st_t*)

define void @foo(double %vfp0,     
                 double %vfp1,     
		 double %vfp2,     
		 double %vfp3,     
		 double %vfp4,     
		 double %vfp5,     
		 double %vfp6,     
		 double %vfp7,     
		 double %vfp8,     
                 i32 %p0,          
		 %st_t* byval %p1, 
		 i32 %p2,          
                 i32 %p3) #0 {     
entry:
  
  
  
  
  
  
  call void @fooUseStruct(%st_t* %p1)
  ret void
}

define void @doFoo() {
entry:
  call void @foo(double 23.0,
                 double 23.1,
                 double 23.2,
                 double 23.3,
                 double 23.4,
                 double 23.5,
                 double 23.6,
                 double 23.7,
                 double 23.8,
                 i32 0, %st_t* byval @static_val, i32 1, i32 2)
  ret void
}

