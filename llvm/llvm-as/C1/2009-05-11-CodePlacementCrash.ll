

	%struct.List = type { %struct.List*, i32 }
@Node5 = external constant %struct.List		
@"\01LC" = external constant [7 x i8]		

define i32 @main() nounwind {
entry:
	br label %bb

bb:		
	%CurL.02 = phi %struct.List* [ @Node5, %entry ], [ %2, %bb3 ]		
	%PrevL.01 = phi %struct.List* [ null, %entry ], [ %CurL.02, %bb3 ]		
	%0 = icmp eq %struct.List* %PrevL.01, null		
	br i1 %0, label %bb3, label %bb1

bb1:		
	br label %bb3

bb3:		
	%iftmp.0.0 = phi i32 [ 0, %bb1 ], [ -1, %bb ]		
	%1 = tail call i32 (i8*, ...) @printf(i8* getelementptr ([7 x i8], [7 x i8]* @"\01LC", i32 0, i32 0), i32 0, i32 %iftmp.0.0) nounwind		
	%2 = load %struct.List*, %struct.List** null, align 4		
	%phitmp = icmp eq %struct.List* %2, null		
	br i1 %phitmp, label %bb5, label %bb

bb5:		
	ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
