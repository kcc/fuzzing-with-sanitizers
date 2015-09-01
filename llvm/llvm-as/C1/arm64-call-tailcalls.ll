

@t = weak global i32 ()* null
@x = external global i32, align 4

define void @t2() {





  %tmp = load i32 ()*, i32 ()** @t
  %tmp.upgrd.2 = tail call i32 %tmp()
  ret void
}

define void @t3() {


  tail call void @t2()
  ret void
}

define double @t4(double %a) nounwind readonly ssp {


  %tmp = tail call double @sin(double %a) nounwind readonly
  ret double %tmp
}

define float @t5(float %a) nounwind readonly ssp {


  %tmp = tail call float @sinf(float %a) nounwind readonly
  ret float %tmp
}

define void @t7() nounwind {




  br i1 undef, label %bb, label %bb1.lr.ph

bb1.lr.ph:                                        
  tail call void @bar() nounwind
  ret void

bb:                                               
  tail call void @foo() nounwind
  ret void
}

define i32 @t8(i32 %x) nounwind ssp {




  %and = and i32 %x, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  %call = tail call i32 @a(i32 %x) nounwind
  br label %return

if.end:                                           
  %and1 = and i32 %x, 2
  %tobool2 = icmp eq i32 %and1, 0
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         
  %call4 = tail call i32 @b(i32 %x) nounwind
  br label %return

if.end5:                                          
  %call6 = tail call i32 @c(i32 %x) nounwind
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

declare float @sinf(float) nounwind readonly
declare double @sin(double) nounwind readonly
declare void @bar() nounwind
declare void @foo() nounwind
declare i32 @a(i32)
declare i32 @b(i32)
declare i32 @c(i32)
