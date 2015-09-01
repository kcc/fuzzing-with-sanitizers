

	%0 = type { %struct.GAP }		
	%1 = type { i16, i8, i8 }		
	%2 = type { [2 x i32], [2 x i32] }		
	%3 = type { %struct.rec* }		
	%4 = type { i8, i8, i16, i8, i8, i8, i8 }		
	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
	%struct.FILE_POS = type { i8, i8, i16, i32 }
	%struct.FIRST_UNION = type { %struct.FILE_POS }
	%struct.FOURTH_UNION = type { %struct.STYLE }
	%struct.GAP = type { i8, i8, i16 }
	%struct.LIST = type { %struct.rec*, %struct.rec* }
	%struct.SECOND_UNION = type { %1 }
	%struct.STYLE = type { %0, %0, i16, i16, i32 }
	%struct.THIRD_UNION = type { %2 }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct.head_type = type { [2 x %struct.LIST], %struct.FIRST_UNION, %struct.SECOND_UNION, %struct.THIRD_UNION, %struct.FOURTH_UNION, %struct.rec*, %3, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, i32 }
	%struct.rec = type { %struct.head_type }
@.str24239 = external constant [20 x i8], align 1		
@no_file_pos = external global %4		
@zz_tmp = external global %struct.rec*		
@.str81872 = external constant [10 x i8], align 1		
@out_fp = external global %struct.FILE*		
@cpexists = external global i32		
@.str212784 = external constant [17 x i8], align 1		
@.str1822946 = external constant [8 x i8], align 1		
@.str1842948 = external constant [11 x i8], align 1		

declare i32 @fprintf(%struct.FILE* nocapture, i8* nocapture, ...) nounwind

declare i32 @"\01_fwrite"(i8*, i32, i32, i8*)

declare %struct.FILE* @OpenIncGraphicFile(i8*, i8 zeroext, %struct.rec** nocapture, %struct.FILE_POS*, i32* nocapture) nounwind

declare void @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) nounwind

declare i8* @fgets(i8*, i32, %struct.FILE* nocapture) nounwind

define void @PS_PrintGraphicInclude(%struct.rec* %x, i32 %colmark, i32 %rowmark) nounwind {
entry:
	br label %bb5

bb5:		
	%.pn = phi %struct.rec* [ %y.0, %bb5 ], [ undef, %entry ]		
	%y.0.in = getelementptr %struct.rec, %struct.rec* %.pn, i32 0, i32 0, i32 0, i32 1, i32 0		
	%y.0 = load %struct.rec*, %struct.rec** %y.0.in		
	br i1 undef, label %bb5, label %bb6

bb6:		
	%0 = call  %struct.FILE* @OpenIncGraphicFile(i8* undef, i8 zeroext 0, %struct.rec** undef, %struct.FILE_POS* null, i32* undef) nounwind		
	br i1 false, label %bb.i, label %FontHalfXHeight.exit

bb.i:		
	br label %FontHalfXHeight.exit

FontHalfXHeight.exit:		
	br i1 undef, label %bb.i1, label %FontSize.exit

bb.i1:		
	br label %FontSize.exit

FontSize.exit:		
	%1 = load i32, i32* undef, align 4		
	%2 = icmp ult i32 0, undef		
	br i1 %2, label %bb.i5, label %FontName.exit

bb.i5:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr ([20 x i8], [20 x i8]* @.str24239, i32 0, i32 0), i32 0, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*), i8* getelementptr ([10 x i8], [10 x i8]* @.str81872, i32 0, i32 0)) nounwind
	br label %FontName.exit

FontName.exit:		
	%3 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* undef, i8* getelementptr ([8 x i8], [8 x i8]* @.str1822946, i32 0, i32 0), i32 %1, i8* undef) nounwind		
	%4 = call  i32 @"\01_fwrite"(i8* getelementptr ([11 x i8], [11 x i8]* @.str1842948, i32 0, i32 0), i32 1, i32 10, i8* undef) nounwind		
	%5 = sub i32 %colmark, undef		
	%6 = sub i32 %rowmark, undef		
	%7 = load %struct.FILE*, %struct.FILE** @out_fp, align 4		
	%8 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* %7, i8* getelementptr ([17 x i8], [17 x i8]* @.str212784, i32 0, i32 0), i32 %5, i32 %6) nounwind		
	store i32 0, i32* @cpexists, align 4
	%9 = getelementptr %struct.rec, %struct.rec* %y.0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 1		
	%10 = load i32, i32* %9, align 4		
	%11 = sub i32 0, %10		
	%12 = load %struct.FILE*, %struct.FILE** @out_fp, align 4		
	%13 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* %12, i8* getelementptr ([17 x i8], [17 x i8]* @.str212784, i32 0, i32 0), i32 undef, i32 %11) nounwind		
	store i32 0, i32* @cpexists, align 4
	br label %bb100.outer.outer

bb100.outer.outer:		
	%x_addr.0.ph.ph = phi %struct.rec* [ %x, %FontName.exit ], [ null, %bb79.critedge ], [ null, %bb1.i3 ]		
	%14 = getelementptr %struct.rec, %struct.rec* %x_addr.0.ph.ph, i32 0, i32 0, i32 1, i32 0		
	br label %bb100.outer

bb.i80:		
	br i1 undef, label %bb2.i84, label %bb2.i51

bb2.i84:		
	br i1 undef, label %bb3.i77, label %bb3.i85

bb3.i85:		
	br i1 false, label %StringBeginsWith.exit88, label %bb.i80

StringBeginsWith.exit88:		
	br i1 undef, label %bb3.i77, label %bb2.i51

bb2.i.i68:		
	br label %bb3.i77

bb3.i77:		
	br i1 false, label %bb1.i58, label %bb2.i.i68

bb1.i58:		
	unreachable

bb.i47:		
	br i1 undef, label %bb2.i51, label %bb2.i.i15.critedge

bb2.i51:		
	%15 = load i8, i8* undef, align 1		
	br i1 false, label %StringBeginsWith.exit55thread-split, label %bb3.i52

bb3.i52:		
	br i1 false, label %StringBeginsWith.exit55, label %bb.i47

StringBeginsWith.exit55thread-split:		
	br label %StringBeginsWith.exit55

StringBeginsWith.exit55:		
	br label %bb2.i41

bb2.i41:		
	br label %bb2.i41

bb2.i.i15.critedge:		
	%16 = call  i8* @fgets(i8* undef, i32 512, %struct.FILE* %0) nounwind		
	%iftmp.560.0 = select i1 undef, i32 2, i32 0		
	br label %bb100.outer

bb2.i8:		
	br i1 undef, label %bb1.i3, label %bb79.critedge

bb1.i3:		
	br label %bb100.outer.outer

bb79.critedge:		
	store %struct.rec* null, %struct.rec** @zz_tmp, align 4
	br label %bb100.outer.outer

bb100.outer:		
	%state.0.ph = phi i32 [ 0, %bb100.outer.outer ], [ %iftmp.560.0, %bb2.i.i15.critedge ]		
	%cond = icmp eq i32 %state.0.ph, 1		
	br i1 %cond, label %bb2.i8, label %bb2.i84
}
