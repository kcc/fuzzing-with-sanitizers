



define void @t1a(float %a) uwtable ssp {
entry:


  %cmp = fcmp oeq float %a, 0.000000e+00


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

declare void @foo()


define void @t1b(float %a) uwtable ssp {
entry:


  %cmp = fcmp oeq float %a, -0.000000e+00




  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t2a(double %a) uwtable ssp {
entry:


  %cmp = fcmp oeq double %a, 0.000000e+00


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}


define void @t2b(double %a) uwtable ssp {
entry:


  %cmp = fcmp oeq double %a, -0.000000e+00




  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t4(i8 signext %a) uwtable ssp {
entry:


  %cmp = icmp eq i8 %a, -1


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t5(i8 zeroext %a) uwtable ssp {
entry:


  %cmp = icmp eq i8 %a, 1


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t6(i16 signext %a) uwtable ssp {
entry:


  %cmp = icmp eq i16 %a, -1


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t7(i16 zeroext %a) uwtable ssp {
entry:


  %cmp = icmp eq i16 %a, 1


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t8(i32 %a) uwtable ssp {
entry:


  %cmp = icmp eq i32 %a, -1


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t9(i32 %a) uwtable ssp {
entry:


  %cmp = icmp eq i32 %a, 1


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t10(i32 %a) uwtable ssp {
entry:


  %cmp = icmp eq i32 %a, 384


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t11(i32 %a) uwtable ssp {
entry:


  %cmp = icmp eq i32 %a, 4096


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}

define void @t12(i8 %a) uwtable ssp {
entry:


  %cmp = icmp ugt i8 %a, -113


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  ret void
}



define void @t13() nounwind ssp {
entry:


  %cmp = icmp slt i32 -123, -2147483648


  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  ret void

if.end:                                           
  ret void
}

