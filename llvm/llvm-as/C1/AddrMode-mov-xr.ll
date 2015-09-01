
target datalayout = "e-p:16:16:16-i1:8:8-i8:8:8-i16:16:16-i32:16:16"
target triple = "msp430-generic-generic"

define void @am1(i16* %a, i16 %b) nounwind {
	store i16 %b, i16* %a
	ret void
}



@foo = external global i16

define void @am2(i16 %a) nounwind {
	store i16 %a, i16* @foo
	ret void
}



@bar = external global [2 x i8]

define void @am3(i16 %i, i8 %a) nounwind {
	%1 = getelementptr [2 x i8], [2 x i8]* @bar, i16 0, i16 %i
	store i8 %a, i8* %1
	ret void
}



define void @am4(i16 %a) nounwind {
	store volatile i16 %a, i16* inttoptr(i16 32 to i16*)
	ret void
}



define void @am5(i16* nocapture %p, i16 %a) nounwind readonly {
	%1 = getelementptr inbounds i16, i16* %p, i16 2
	store i16 %a, i16* %1
	ret void
}



%S = type { i16, i16 }
@baz = common global %S zeroinitializer, align 1

define void @am6(i16 %a) nounwind {
	store i16 %a, i16* getelementptr (%S, %S* @baz, i32 0, i32 1)
	ret void
}



%T = type { i16, [2 x i8] }
@duh = external global %T

define void @am7(i16 %n, i8 %a) nounwind {
	%1 = getelementptr %T, %T* @duh, i32 0, i32 1
	%2 = getelementptr [2 x i8], [2 x i8]* %1, i16 0, i16 %n
	store i8 %a, i8* %2
	ret void
}



