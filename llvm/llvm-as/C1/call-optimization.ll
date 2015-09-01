




@gd1 = common global double 0.000000e+00, align 8
@gd2 = common global double 0.000000e+00, align 8



























define void @caller3(i32 %n) {
entry:
  tail call void @callee3()
  tail call void @callee3()
  %tobool1 = icmp eq i32 %n, 0
  br i1 %tobool1, label %while.end, label %while.body

while.body:
  %n.addr.02 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %dec = add nsw i32 %n.addr.02, -1
  tail call void @callee3()
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:
  ret void
}

declare void @callee3()



























define void @caller4(double %d) {
entry:
  %call = tail call double @ceil(double %d)
  %call1 = tail call double @ceil(double %call)
  store double %call1, double* @gd2, align 8
  %call2 = tail call double @ceil(double %call1)
  store double %call2, double* @gd1, align 8
  ret void
}

declare double @ceil(double)
