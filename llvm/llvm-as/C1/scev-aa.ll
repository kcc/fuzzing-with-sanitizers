






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64"






define void @loop(double* nocapture %p, i64 %n) nounwind {
entry:
  %j = icmp sgt i64 %n, 0
  br i1 %j, label %bb, label %return

bb:
  %i = phi i64 [ 0, %entry ], [ %i.next, %bb ]
  %pi = getelementptr double, double* %p, i64 %i
  %i.next = add i64 %i, 1
  %pi.next = getelementptr double, double* %p, i64 %i.next
  %x = load double, double* %pi
  %y = load double, double* %pi.next
  %z = fmul double %x, %y
  store double %z, double* %pi
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %bb

return:
  ret void
}








define void @nestedloop(double* nocapture %p, i64 %m) nounwind {
entry:
  %k = icmp sgt i64 %m, 0
  br i1 %k, label %guard, label %return

guard:
  %l = icmp sgt i64 91, 0
  br i1 %l, label %outer.loop, label %return

outer.loop:
  %j = phi i64 [ 0, %guard ], [ %j.next, %outer.latch ]
  br label %bb

bb:
  %i = phi i64 [ 0, %outer.loop ], [ %i.next, %bb ]
  %i.next = add i64 %i, 1

  %e = add i64 %i, %j
  %pi.j = getelementptr double, double* %p, i64 %e
  %f = add i64 %i.next, %j
  %pi.next.j = getelementptr double, double* %p, i64 %f
  %x = load double, double* %pi.j
  %y = load double, double* %pi.next.j
  %z = fmul double %x, %y
  store double %z, double* %pi.j

  %o = add i64 %j, 91
  %g = add i64 %i, %o
  %pi.j.next = getelementptr double, double* %p, i64 %g
  %a = load double, double* %pi.j.next
  %b = fmul double %x, %a
  store double %b, double* %pi.j.next

  %exitcond = icmp eq i64 %i.next, 91
  br i1 %exitcond, label %outer.latch, label %bb

outer.latch:
  %j.next = add i64 %j, 91
  %h = icmp eq i64 %j.next, %m
  br i1 %h, label %return, label %outer.loop

return:
  ret void
}













define void @nestedloop_more(double* nocapture %p, i64 %n, i64 %m) nounwind {
entry:
  %k = icmp sgt i64 %m, 0
  br i1 %k, label %guard, label %return

guard:
  %l = icmp sgt i64 %n, 0
  br i1 %l, label %outer.loop, label %return

outer.loop:
  %j = phi i64 [ 0, %guard ], [ %j.next, %outer.latch ]
  br label %bb

bb:
  %i = phi i64 [ 0, %outer.loop ], [ %i.next, %bb ]
  %i.next = add i64 %i, 1

  %e = add i64 %i, %j
  %pi.j = getelementptr double, double* %p, i64 %e
  %f = add i64 %i.next, %j
  %pi.next.j = getelementptr double, double* %p, i64 %f
  %x = load double, double* %pi.j
  %y = load double, double* %pi.next.j
  %z = fmul double %x, %y
  store double %z, double* %pi.j

  %o = add i64 %j, %n
  %g = add i64 %i, %o
  %pi.j.next = getelementptr double, double* %p, i64 %g
  %a = load double, double* %pi.j.next
  %b = fmul double %x, %a
  store double %b, double* %pi.j.next

  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %outer.latch, label %bb

outer.latch:
  %j.next = add i64 %j, %n
  %h = icmp eq i64 %j.next, %m
  br i1 %h, label %return, label %outer.loop

return:
  ret void
}





%struct.A = type { %struct.B, i32, i32 }
%struct.B = type { double }










define void @foo() {
entry:
  %A = alloca %struct.A
  %B = getelementptr %struct.A, %struct.A* %A, i32 0, i32 0
  %Q = bitcast %struct.B* %B to %struct.A*
  %Z = getelementptr %struct.A, %struct.A* %Q, i32 0, i32 1
  %C = getelementptr %struct.B, %struct.B* %B, i32 1
  %X = bitcast %struct.B* %C to i32*
  %Y = getelementptr %struct.A, %struct.A* %A, i32 0, i32 1
  ret void
}










define void @bar() {
  %M = alloca %struct.A
  %N = getelementptr %struct.A, %struct.A* %M, i32 0, i32 0
  %O = bitcast %struct.B* %N to %struct.A*
  %P = getelementptr %struct.A, %struct.A* %O, i32 0, i32 1
  %R = getelementptr %struct.B, %struct.B* %N, i32 1
  %W = bitcast %struct.B* %R to i32*
  %V = getelementptr %struct.A, %struct.A* %M, i32 0, i32 1
  ret void
}




define void @nonnegative(i64* %p) nounwind {
entry:
  br label %for.body

for.body:                                         
  %i = phi i64 [ %inc, %for.body ], [ 0, %entry ] 
  %inc = add nsw i64 %i, 1                         
  %arrayidx = getelementptr inbounds i64, i64* %p, i64 %inc
  store i64 0, i64* %arrayidx
  %tmp6 = load i64, i64* %p                            
  %cmp = icmp slt i64 %inc, %tmp6                 
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}




