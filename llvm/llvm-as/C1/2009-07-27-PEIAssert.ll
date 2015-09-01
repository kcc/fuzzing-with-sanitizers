

	%struct.LinkList = type { i32, %struct.LinkList* }
	%struct.List = type { i32, i32* }
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @main to i8*)], section "llvm.metadata"		

define i32 @main() nounwind {
entry:
	%ll = alloca %struct.LinkList*, align 4		
	%0 = call  i32 @ReadList(%struct.LinkList** %ll, %struct.List** null) nounwind		
	switch i32 %0, label %bb5 [
		i32 7, label %bb4
		i32 42, label %bb3
	]

bb3:		
	ret i32 1

bb4:		
	ret i32 0

bb5:		
	ret i32 1
}

declare i32 @ReadList(%struct.LinkList** nocapture, %struct.List** nocapture) nounwind
