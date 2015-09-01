

define void @autogen_51367_5000(i8) {
BB:
  %B = srem i8 55, %0
  %B9 = shl i8 %B, %B
  br label %CF

CF:                                               
  br i1 undef, label %CF, label %CF403

CF403:                                            
  %S44 = icmp eq i8 %B9, %0
  br i1 %S44, label %CF403, label %CF405

CF405:                                            
  br label %CF405
}
