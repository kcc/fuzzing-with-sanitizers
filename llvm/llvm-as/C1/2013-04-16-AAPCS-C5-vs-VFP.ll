

















%struct_t = type { i32, i32, i32, i32 }
@static_val = constant %struct_t { i32 777, i32 888, i32 999, i32 1000 }
declare void @fooUseStruct(%struct_t*)

define void @foo2(double %p0, 
                  double %p1, 
		  double %p2, 
		  double %p3, 
		  double %p4, 
		  double %p5, 
		  double %p6, 
		  double %p7, 
		  double %p8, 
		  i32 %p9,    
                  %struct_t* byval %p10) 
{
entry:




  call void @fooUseStruct(%struct_t* %p10)

  ret void
}

define void @doFoo2() {
entry:

  tail call void @foo2(double 23.0, 
                       double 23.1, 
		       double 23.2, 
                       double 23.3, 
                       double 23.4, 
                       double 23.5, 
                       double 23.6, 
                       double 23.7, 
                       double 23.8, 
                       i32 43,      
                       %struct_t* byval @static_val) 
  ret void
}

