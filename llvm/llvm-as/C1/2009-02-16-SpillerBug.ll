

target triple = "arm-apple-darwin9"
	%struct.FILE_POS = type { i8, i8, i16, i32 }
	%struct.FIRST_UNION = type { %struct.FILE_POS }
	%struct.FOURTH_UNION = type { %struct.STYLE }
	%struct.GAP = type { i8, i8, i16 }
	%struct.LIST = type { %struct.rec*, %struct.rec* }
	%struct.SECOND_UNION = type { { i16, i8, i8 } }
	%struct.STYLE = type { { %struct.GAP }, { %struct.GAP }, i16, i16, i32 }
	%struct.THIRD_UNION = type { { [2 x i32], [2 x i32] } }
	%struct.head_type = type { [2 x %struct.LIST], %struct.FIRST_UNION, %struct.SECOND_UNION, %struct.THIRD_UNION, %struct.FOURTH_UNION, %struct.rec*, { %struct.rec* }, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, i32 }
	%struct.rec = type { %struct.head_type }
@no_file_pos = external global %struct.FILE_POS		
@"\01LC13423" = external constant [23 x i8]		
@"\01LC18972" = external constant [13 x i8]		

define fastcc void @FlushGalley(%struct.rec* %hd) nounwind {
entry:
	br label %RESUME

RESUME:		
	br label %bb396

bb122:		
	switch i32 0, label %bb394 [
		i32 1, label %bb131
		i32 2, label %bb244
		i32 4, label %bb244
		i32 5, label %bb244
		i32 6, label %bb244
		i32 7, label %bb244
		i32 11, label %bb244
		i32 12, label %bb244
		i32 15, label %bb244
		i32 17, label %bb244
		i32 18, label %bb244
		i32 19, label %bb244
		i32 20, label %bb396
		i32 21, label %bb396
		i32 22, label %bb396
		i32 23, label %bb396
		i32 24, label %bb244
		i32 25, label %bb244
		i32 26, label %bb244
		i32 27, label %bb244
		i32 28, label %bb244
		i32 29, label %bb244
		i32 30, label %bb244
		i32 31, label %bb244
		i32 32, label %bb244
		i32 33, label %bb244
		i32 34, label %bb244
		i32 35, label %bb244
		i32 36, label %bb244
		i32 37, label %bb244
		i32 38, label %bb244
		i32 39, label %bb244
		i32 40, label %bb244
		i32 41, label %bb244
		i32 42, label %bb244
		i32 43, label %bb244
		i32 44, label %bb244
		i32 45, label %bb244
		i32 46, label %bb244
		i32 50, label %bb244
		i32 51, label %bb244
		i32 94, label %bb244
		i32 95, label %bb244
		i32 96, label %bb244
		i32 97, label %bb244
		i32 98, label %bb244
		i32 99, label %bb244
	]

bb131:		
	br label %bb396

bb244:		
	%0 = icmp eq %struct.rec* %stop_link.3, null		
	br i1 %0, label %bb435, label %bb433

bb394:		
	call void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr ([23 x i8], [23 x i8]* @"\01LC13423", i32 0, i32 0), i32 0, %struct.FILE_POS* @no_file_pos, i8* getelementptr ([13 x i8], [13 x i8]* @"\01LC18972", i32 0, i32 0), i8* null) nounwind
	br label %bb396

bb396:		
	%stop_link.3 = phi %struct.rec* [ null, %RESUME ], [ %stop_link.3, %bb394 ], [ %stop_link.3, %bb122 ], [ %stop_link.3, %bb122 ], [ %stop_link.3, %bb122 ], [ %stop_link.3, %bb122 ], [ %link.1, %bb131 ]		
	%headers_seen.1 = phi i32 [ 0, %RESUME ], [ %headers_seen.1, %bb394 ], [ 1, %bb122 ], [ 1, %bb122 ], [ 1, %bb122 ], [ 1, %bb122 ], [ %headers_seen.1, %bb131 ]		
	%link.1 = load %struct.rec*, %struct.rec** null		
	%1 = icmp eq %struct.rec* %link.1, %hd		
	br i1 %1, label %bb398, label %bb122

bb398:		
	unreachable

bb433:		
	call fastcc void @Promote(%struct.rec* %hd, %struct.rec* %stop_link.3, %struct.rec* null, i32 1) nounwind
	br label %bb435

bb435:		
	br i1 false, label %bb491, label %bb499

bb491:		
	br label %bb499

bb499:		
	%2 = icmp eq %struct.rec* null, null		
	br i1 %2, label %bb520.preheader, label %bb499

bb520.preheader:		
	br label %RESUME
}

declare fastcc void @Promote(%struct.rec*, %struct.rec*, %struct.rec* nocapture, i32) nounwind

declare void @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) nounwind
