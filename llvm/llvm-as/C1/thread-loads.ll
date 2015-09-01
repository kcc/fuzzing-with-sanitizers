

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin7"



define i32 @test1(i32* %P) nounwind {

entry:
	%0 = tail call i32 (...) @f1() nounwind		
	%1 = icmp eq i32 %0, 0		
	br i1 %1, label %bb1, label %bb

bb:		



	store i32 42, i32* %P, align 4
	br label %bb1

bb1:		
	%res.0 = phi i32 [ 1, %bb ], [ 0, %entry ]		
	%2 = load i32, i32* %P, align 4		
	%3 = icmp sgt i32 %2, 36		
	br i1 %3, label %bb3, label %bb2

bb2:		
	%4 = tail call i32 (...) @f2() nounwind		
	ret i32 %res.0

bb3:		



	ret i32 %res.0
}

declare i32 @f1(...)

declare i32 @f2(...)





define i32 @test2(i32* %P) nounwind {

entry:
	%0 = tail call i32 (...) @f1() nounwind		
	%1 = icmp eq i32 %0, 0		
	br i1 %1, label %bb1, label %bb

bb:		



	store i32 42, i32* %P, align 4, !tbaa !0
	br label %bb1

bb1:		
	%res.0 = phi i32 [ 1, %bb ], [ 0, %entry ]
	%2 = load i32, i32* %P, align 4, !tbaa !0
	%3 = icmp sgt i32 %2, 36
	br i1 %3, label %bb3, label %bb2

bb2:		
	%4 = tail call i32 (...) @f2() nounwind
	ret i32 %res.0

bb3:		



	ret i32 %res.0
}

define i32 @test3(i8** %x, i1 %f) {





entry:
  %0 = bitcast i8** %x to i32**
  %1 = load i32*, i32** %0, align 8
  br i1 %f, label %if.end57, label %if.then56



if.then56:
  br label %if.end57

if.end57:
  %2 = load i8*, i8** %x, align 8
  %tobool59 = icmp eq i8* %2, null
  br i1 %tobool59, label %return, label %if.then60




if.then60:
  ret i32 42

return:
  ret i32 13
}

!0 = !{!3, !3, i64 0}
!1 = !{!"omnipotent char", !2}
!2 = !{!"Simple C/C++ TBAA", null}
!3 = !{!"int", !1}
