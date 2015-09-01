

	%struct..0objc_selector = type opaque
	%struct.NSString = type opaque
	%struct.XCStringList = type { i32, %struct._XCStringListNode* }
	%struct._XCStringListNode = type { [3 x i8], [0 x i8], i8 }
	%struct.__builtin_CFString = type { i32*, i32, i8*, i32 }
internal constant %struct.__builtin_CFString { i32* getelementptr ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr ([3 x i8], [3 x i8]* @"\01LC", i32 0, i32 0), i32 2 }		
@__CFConstantStringClassReference = external global [0 x i32]		
@"\01LC" = internal constant [3 x i8] c"NO\00"		
@"\01LC1" = internal constant [1 x i8] zeroinitializer		
@llvm.used1 = appending global [1 x i8*] [ i8* bitcast (%struct.NSString* (%struct.XCStringList*, %struct..0objc_selector*)* @"-[XCStringList stringRepresentation]" to i8*) ], section "llvm.metadata"		

define %struct.NSString* @"-[XCStringList stringRepresentation]"(%struct.XCStringList* %self, %struct..0objc_selector* %_cmd) nounwind {
entry:
	%0 = load i32, i32* null, align 4		
	%1 = and i32 %0, 16777215		
	%2 = icmp eq i32 %1, 0		
	br i1 %2, label %bb44, label %bb4

bb4:		
	%3 = load %struct._XCStringListNode*, %struct._XCStringListNode** null, align 4		
	%4 = icmp eq %struct._XCStringListNode* %3, null		
	%5 = bitcast %struct._XCStringListNode* %3 to i32*		
	br label %bb37.outer

bb6:		
	br label %bb19

bb19:		
	%.rle = phi i32 [ 0, %bb6 ], [ %10, %bb37 ]		
	%bufptr.0.lcssa = phi i8* [ null, %bb6 ], [ null, %bb37 ]		
	%6 = and i32 %.rle, 16777215		
	%7 = icmp eq i32 %6, 0		
	br i1 %7, label %bb25.split, label %bb37

bb25.split:		
	call void @foo(i8* getelementptr ([1 x i8], [1 x i8]* @"\01LC1", i32 0, i32 0)) nounwind nounwind
	br label %bb35.outer

bb34:		
	%8 = getelementptr i8, i8* %bufptr.0.lcssa, i32 %totalLength.0.ph		
	store i8 92, i8* %8, align 1
	br label %bb35.outer

bb35.outer:		
	%totalLength.0.ph = add i32 0, %totalLength.1.ph		
	br label %bb35

bb35:		
	%9 = load i8, i8* null, align 1		
	switch i8 %9, label %bb35 [
		i8 0, label %bb37.outer
		i8 32, label %bb34
		i8 92, label %bb34
		i8 34, label %bb34
		i8 39, label %bb34
	]

bb37.outer:		
	%totalLength.1.ph = phi i32 [ 0, %bb4 ], [ %totalLength.0.ph, %bb35 ]		
	%bufptr.1.ph = phi i8* [ null, %bb4 ], [ %bufptr.0.lcssa, %bb35 ]		
	br i1 %4, label %bb39.split, label %bb37

bb37:		
	%10 = load i32, i32* %5, align 4		
	br i1 false, label %bb6, label %bb19

bb39.split:		
	%11 = bitcast i8* null to %struct.NSString*		
	%12 = icmp eq i8* null, %bufptr.1.ph		
	br i1 %12, label %bb44, label %bb42

bb42:		
	call void @quux(i8* %bufptr.1.ph) nounwind nounwind
	ret %struct.NSString* %11

bb44:		
	%.0 = phi %struct.NSString* [ bitcast (%struct.__builtin_CFString* @0 to %struct.NSString*), %entry ], [ %11, %bb39.split ]		
	ret %struct.NSString* %.0
}

declare void @foo(i8*)

declare void @quux(i8*)
