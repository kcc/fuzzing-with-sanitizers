







@t = weak global i32 ()* null           

declare void @g(i32, i32, i32, i32)

define void @t1() {


        call void @g( i32 1, i32 2, i32 3, i32 4 )
        ret void
}

define void @t2() {






        %tmp = load i32 ()*, i32 ()** @t         
        %tmp.upgrd.2 = tail call i32 %tmp( )            
        ret void
}

define void @t3() {







        tail call void @t2( )            
        ret void
}


define double @t4(double %a) nounwind readonly ssp {
entry:




  %0 = tail call double @sin(double %a) nounwind readonly 
  ret double %0
}

define float @t5(float %a) nounwind readonly ssp {
entry:




  %0 = tail call float @sinf(float %a) nounwind readonly 
  ret float %0
}

declare float @sinf(float) nounwind readonly

declare double @sin(double) nounwind readonly

define i32 @t6(i32 %a, i32 %b) nounwind readnone {
entry:




  %0 = sdiv i32 %a, %b
  ret i32 %0
}



declare void @foo() nounwind

define void @t7() nounwind {
entry:




  br i1 undef, label %bb, label %bb1.lr.ph

bb1.lr.ph:
  tail call void @foo() nounwind
  unreachable

bb:
  tail call void @foo() nounwind
  ret void
}



define i32 @t8(i32 %x) nounwind ssp {
entry:


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

declare i32 @a(i32)

declare i32 @b(i32)

declare i32 @c(i32)





%class.MutexLock = type { i8 }

@x = external global i32, align 4

define i32 @t9() nounwind {




  %lock = alloca %class.MutexLock, align 1
  %1 = call %class.MutexLock* @_ZN9MutexLockC1Ev(%class.MutexLock* %lock)
  %2 = load i32, i32* @x, align 4
  %3 = sdiv i32 1000, %2
  %4 = call %class.MutexLock* @_ZN9MutexLockD1Ev(%class.MutexLock* %lock)
  ret i32 %3
}

declare %class.MutexLock* @_ZN9MutexLockC1Ev(%class.MutexLock*) unnamed_addr nounwind align 2

declare %class.MutexLock* @_ZN9MutexLockD1Ev(%class.MutexLock*) unnamed_addr nounwind align 2




define float @libcall_tc_test2(float* nocapture %a, float %b) {



  %1 = load float, float* %a, align 4
  %call = tail call float @floorf(float %1)
  store float %call, float* %a, align 4
  %call1 = tail call float @truncf(float %b)
  ret float %call1
}

declare float @floorf(float) readnone
declare float @truncf(float) readnone
