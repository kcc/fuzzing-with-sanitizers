


@x = common global i64 0                          

define i32 @foo() nounwind readonly ssp {
entry:
  %0 = load i64, i64* @x, align 8                      
  %1 = uitofp i64 %0 to double                    
  %2 = fptosi double %1 to i32                    
  ret i32 %2
}
