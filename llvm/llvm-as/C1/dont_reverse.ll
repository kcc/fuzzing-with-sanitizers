







target datalayout = "n2:8:16:32:64"

define void @Fill_Buffer(i2* %p) nounwind {
entry:
	br label %bb8

bb8:
	%indvar34 = phi i32 [ 0, %entry ], [ %indvar.next35, %bb8 ]
	%indvar3451 = trunc i32 %indvar34 to i2
	%xmp4344 = load i2, i2* %p
	%xmp104 = icmp eq i2 %indvar3451, %xmp4344
	%indvar.next35 = add i32 %indvar34, 1
	br i1 %xmp104, label %bb10, label %bb8

bb10:
	unreachable
}
