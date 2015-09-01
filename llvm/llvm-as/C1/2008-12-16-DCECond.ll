

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-pc-linux-gnu"

define i32 @x(i32 %x) {
entry:
	%cmp = icmp eq i32 %x, 8		
	br i1 %cmp, label %ifthen, label %ifend

ifthen:		
	%call = call i32 (...) @foo()		
	br label %ifend

ifend:		
	%cmp2 = icmp ne i32 %x, 8		
	br i1 %cmp2, label %ifthen3, label %ifend5

ifthen3:		
	%call4 = call i32 (...) @foo()		
	br label %ifend5

ifend5:		
	%cmp7 = icmp eq i32 %x, 9		
	br i1 %cmp7, label %ifthen8, label %ifend10

ifthen8:		
	%call9 = call i32 (...) @bar()		
	br label %ifend10

ifend10:		
	%cmp12 = icmp ne i32 %x, 9		
	br i1 %cmp12, label %ifthen13, label %ifend15

ifthen13:		
	%call14 = call i32 (...) @bar()		
	br label %ifend15

ifend15:		
	ret i32 0
}

declare i32 @foo(...)

declare i32 @bar(...)

