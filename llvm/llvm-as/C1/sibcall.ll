



define void @t1(i32 %x) nounwind ssp {
entry:








  tail call void @foo() nounwind
  ret void
}

declare void @foo()

define void @t2() nounwind ssp {
entry:








  %0 = tail call i32 @foo2() nounwind
  ret void
}

declare i32 @foo2()

define void @t3() nounwind ssp {
entry:








  %0 = tail call i32 @foo3() nounwind
  ret void
}

declare i32 @foo3()

define void @t4(void (i32)* nocapture %x) nounwind ssp {
entry:











  tail call void %x(i32 0) nounwind
  ret void
}

define void @t5(void ()* nocapture %x) nounwind ssp {
entry:














  tail call void %x() nounwind
  ret void
}

define i32 @t6(i32 %x) nounwind ssp {
entry:











  %0 = icmp slt i32 %x, 10
  br i1 %0, label %bb, label %bb1

bb:
  %1 = add nsw i32 %x, -1
  %2 = tail call i32 @t6(i32 %1) nounwind ssp
  ret i32 %2

bb1:
  %3 = tail call i32 @bar(i32 %x) nounwind
  ret i32 %3
}

declare i32 @bar(i32)

define i32 @t7(i32 %a, i32 %b, i32 %c) nounwind ssp {
entry:








  %0 = tail call i32 @bar2(i32 %a, i32 %b, i32 %c) nounwind
  ret i32 %0
}

declare i32 @bar2(i32, i32, i32)

define signext i16 @t8() nounwind ssp {
entry:








  %0 = tail call signext i16 @bar3() nounwind      
  ret i16 %0
}

declare signext i16 @bar3()

define signext i16 @t9(i32 (i32)* nocapture %x) nounwind ssp {
entry:








  %0 = bitcast i32 (i32)* %x to i16 (i32)*
  %1 = tail call signext i16 %0(i32 0) nounwind
  ret i16 %1
}

define void @t10() nounwind ssp {
entry:








  %0 = tail call i32 @foo4() noreturn nounwind
  unreachable
}

declare i32 @foo4()

define i32 @t11(i32 %x, i32 %y, i32 %z.0, i32 %z.1, i32 %z.2) nounwind ssp {



















entry:
  %0 = icmp eq i32 %x, 0
  br i1 %0, label %bb6, label %bb

bb:
  %1 = tail call i32 @foo5(i32 %x, i32 %y, i32 %z.0, i32 %z.1, i32 %z.2) nounwind
  ret i32 %1

bb6:
  ret i32 0
}

declare i32 @foo5(i32, i32, i32, i32, i32)

%struct.t = type { i32, i32, i32, i32, i32 }

define i32 @t12(i32 %x, i32 %y, %struct.t* byval align 4 %z) nounwind ssp {














entry:
  %0 = icmp eq i32 %x, 0
  br i1 %0, label %bb2, label %bb

bb:
  %1 = tail call i32 @foo6(i32 %x, i32 %y, %struct.t* byval align 4 %z) nounwind
  ret i32 %1

bb2:
  ret i32 0
}

declare i32 @foo6(i32, i32, %struct.t* byval align 4)


%struct.ns = type { i32, i32 }
%struct.cp = type { float, float, float, float, float }

define %struct.ns* @t13(%struct.cp* %yy) nounwind ssp {














entry:
  %0 = tail call fastcc %struct.ns* @foo7(%struct.cp* byval align 4 %yy, i8 signext 0) nounwind
  ret %struct.ns* %0
}



declare fastcc %struct.ns* @foo7(%struct.cp* byval align 4, i8 signext) nounwind ssp

%struct.__block_descriptor = type { i64, i64 }
%struct.__block_descriptor_withcopydispose = type { i64, i64, i8*, i8* }
%struct.__block_literal_1 = type { i8*, i32, i32, i8*, %struct.__block_descriptor* }
%struct.__block_literal_2 = type { i8*, i32, i32, i8*, %struct.__block_descriptor_withcopydispose*, void ()* }

define void @t14(%struct.__block_literal_2* nocapture %.block_descriptor) nounwind ssp {
entry:









  %0 = getelementptr inbounds %struct.__block_literal_2, %struct.__block_literal_2* %.block_descriptor, i64 0, i32 5 
  %1 = load void ()*, void ()** %0, align 8                 
  %2 = bitcast void ()* %1 to %struct.__block_literal_1* 
  %3 = getelementptr inbounds %struct.__block_literal_1, %struct.__block_literal_1* %2, i64 0, i32 3 
  %4 = load i8*, i8** %3, align 8                      
  %5 = bitcast i8* %4 to void (i8*)*              
  %6 = bitcast void ()* %1 to i8*                 
  tail call void %5(i8* %6) nounwind
  ret void
}


%struct.foo = type { [4 x i32] }

define void @t15(%struct.foo* noalias sret %agg.result) nounwind  {











  tail call fastcc void @f(%struct.foo* noalias sret %agg.result) nounwind
  ret void
}

declare void @f(%struct.foo* noalias sret) nounwind

define void @t16() nounwind ssp {
entry:









  %0 = tail call double @bar4() nounwind
  ret void
}

declare double @bar4()


define void @t17() nounwind ssp {
entry:










  tail call void (...) @bar5() nounwind
  ret void
}

declare void @bar5(...)


define void @t18() nounwind ssp {
entry:











  %0 = tail call double (...) @bar6() nounwind
  ret void
}

declare double @bar6(...)

define void @t19() alignstack(32) nounwind {
entry:







  tail call void @foo() nounwind
  ret void
}





define double @t20(double %x) nounwind {
entry:









  %0 = tail call fastcc double @foo20(double %x) nounwind
  ret double %0
}

declare fastcc double @foo20(double) nounwind
