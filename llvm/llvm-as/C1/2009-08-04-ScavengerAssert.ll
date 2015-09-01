

	%0 = type { i16, i8, i8 }		
	%1 = type { [2 x i32], [2 x i32] }		
	%2 = type { %struct.GAP }		
	%3 = type { %struct.rec* }		
	%4 = type { i8, i8, i16, i8, i8, i8, i8 }		
	%5 = type { i8, i8, i8, i8 }		
	%struct.COMPOSITE = type { i8, i16, i16 }
	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
	%struct.FILE_POS = type { i8, i8, i16, i32 }
	%struct.FIRST_UNION = type { %struct.FILE_POS }
	%struct.FONT_INFO = type { %struct.metrics*, i8*, i16*, %struct.COMPOSITE*, i32, %struct.rec*, %struct.rec*, i16, i16, i16*, i8*, i8*, i16* }
	%struct.FOURTH_UNION = type { %struct.STYLE }
	%struct.GAP = type { i8, i8, i16 }
	%struct.LIST = type { %struct.rec*, %struct.rec* }
	%struct.SECOND_UNION = type { %0 }
	%struct.STYLE = type { %2, %2, i16, i16, i32 }
	%struct.THIRD_UNION = type { %1 }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct.head_type = type { [2 x %struct.LIST], %struct.FIRST_UNION, %struct.SECOND_UNION, %struct.THIRD_UNION, %struct.FOURTH_UNION, %struct.rec*, %3, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, %struct.rec*, i32 }
	%struct.metrics = type { i16, i16, i16, i16, i16 }
	%struct.rec = type { %struct.head_type }
@.str24239 = external constant [20 x i8], align 1		
@no_file_pos = external global %4		
@.str19294 = external constant [9 x i8], align 1		
@zz_lengths = external global [150 x i8]		
@next_free.4772 = external global i8**		
@top_free.4773 = external global i8**		
@.str1575 = external constant [32 x i8], align 1		
@zz_free = external global [524 x %struct.rec*]		
@zz_hold = external global %struct.rec*		
@zz_tmp = external global %struct.rec*		
@zz_res = external global %struct.rec*		
@xx_link = external global %struct.rec*		
@font_count = external global i32		
@.str81872 = external constant [10 x i8], align 1		
@.str101874 = external constant [30 x i8], align 1		
@.str111875 = external constant [17 x i8], align 1		
@.str141878 = external constant [27 x i8], align 1		
@out_fp = external global %struct.FILE*		
@.str192782 = external constant [17 x i8], align 1		
@cpexists = external global i32		
@.str212784 = external constant [17 x i8], align 1		
@currentfont = external global i32		
@wordcount = external global i32		
@needs = external global %struct.rec*		
@.str742838 = external constant [6 x i8], align 1		
@.str752839 = external constant [10 x i8], align 1		
@.str1802944 = external constant [40 x i8], align 1		
@.str1822946 = external constant [8 x i8], align 1		
@.str1842948 = external constant [11 x i8], align 1		
@.str1852949 = external constant [23 x i8], align 1		
@.str1872951 = external constant [17 x i8], align 1		
@.str1932957 = external constant [26 x i8], align 1		

declare i32 @fprintf(%struct.FILE* nocapture, i8* nocapture, ...) nounwind

declare i32 @"\01_fwrite"(i8*, i32, i32, i8*)

declare i32 @remove(i8* nocapture) nounwind

declare %struct.FILE* @OpenIncGraphicFile(i8*, i8 zeroext, %struct.rec** nocapture, %struct.FILE_POS*, i32* nocapture) nounwind

declare %struct.rec* @MakeWord(i32, i8* nocapture, %struct.FILE_POS*) nounwind

declare void @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) nounwind

declare i32 @"\01_fputs"(i8*, %struct.FILE*)

declare noalias i8* @calloc(i32, i32) nounwind

declare i8* @fgets(i8*, i32, %struct.FILE* nocapture) nounwind

define void @PS_PrintGraphicInclude(%struct.rec* %x, i32 %colmark, i32 %rowmark) nounwind {
entry:
	%buff = alloca [512 x i8], align 4		
	%0 = getelementptr %struct.rec, %struct.rec* %x, i32 0, i32 0, i32 1, i32 0, i32 0		
	%1 = load i8, i8* %0, align 4		
	%2 = add i8 %1, -94		
	%3 = icmp ugt i8 %2, 1		
	br i1 %3, label %bb, label %bb1

bb:		
	br label %bb1

bb1:		
	%4 = getelementptr %struct.rec, %struct.rec* %x, i32 0, i32 0, i32 2		
	%5 = bitcast %struct.SECOND_UNION* %4 to %5*		
	%6 = getelementptr %5, %5* %5, i32 0, i32 1		
	%7 = load i8, i8* %6, align 1		
	%8 = icmp eq i8 %7, 0		
	br i1 %8, label %bb2, label %bb3

bb2:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr ([20 x i8], [20 x i8]* @.str24239, i32 0, i32 0), i32 0, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*), i8* getelementptr ([40 x i8], [40 x i8]* @.str1802944, i32 0, i32 0)) nounwind
	br label %bb3

bb3:		
	%9 = load %struct.rec*, %struct.rec** undef, align 4		
	br label %bb5

bb5:		
	%y.0 = load %struct.rec*, %struct.rec** null		
	br i1 false, label %bb5, label %bb6

bb6:		
	%10 = load i8, i8* %0, align 4		
	%11 = getelementptr %struct.rec, %struct.rec* %y.0, i32 0, i32 0, i32 1, i32 0		
	%12 = call  %struct.FILE* @OpenIncGraphicFile(i8* undef, i8 zeroext %10, %struct.rec** null, %struct.FILE_POS* %11, i32* undef) nounwind		
	br i1 false, label %bb7, label %bb8

bb7:		
	unreachable

bb8:		
	%13 = and i32 undef, 4095		
	%14 = load i32, i32* @currentfont, align 4		
	br i1 false, label %bb10, label %bb9

bb9:		
	%15 = icmp ult i32 0, %13		
	br i1 %15, label %bb.i, label %FontHalfXHeight.exit

bb.i:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr ([20 x i8], [20 x i8]* @.str24239, i32 0, i32 0), i32 0, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*), i8* getelementptr ([17 x i8], [17 x i8]* @.str111875, i32 0, i32 0)) nounwind
	%.pre186 = load i32, i32* @currentfont, align 4		
	br label %FontHalfXHeight.exit

FontHalfXHeight.exit:		
	%16 = phi i32 [ %.pre186, %bb.i ], [ %13, %bb9 ]		
	br i1 false, label %bb.i1, label %bb1.i

bb.i1:		
	br label %bb1.i

bb1.i:		
	br i1 undef, label %bb2.i, label %FontSize.exit

bb2.i:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 61, i8* getelementptr ([30 x i8], [30 x i8]* @.str101874, i32 0, i32 0), i32 1, %struct.FILE_POS* null) nounwind
	unreachable

FontSize.exit:		
	%17 = getelementptr %struct.FONT_INFO, %struct.FONT_INFO* undef, i32 %16, i32 5		
	%18 = load i32, i32* undef, align 4		
	%19 = load i32, i32* @currentfont, align 4		
	%20 = load i32, i32* @font_count, align 4		
	%21 = icmp ult i32 %20, %19		
	br i1 %21, label %bb.i5, label %FontName.exit

bb.i5:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr ([20 x i8], [20 x i8]* @.str24239, i32 0, i32 0), i32 0, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*), i8* getelementptr ([10 x i8], [10 x i8]* @.str81872, i32 0, i32 0)) nounwind
	br label %FontName.exit

FontName.exit:		
	%22 = phi %struct.FONT_INFO* [ undef, %bb.i5 ], [ undef, %FontSize.exit ]		
	%23 = getelementptr %struct.FONT_INFO, %struct.FONT_INFO* %22, i32 %19, i32 5		
	%24 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* undef, i8* getelementptr ([8 x i8], [8 x i8]* @.str1822946, i32 0, i32 0), i32 %18, i8* null) nounwind		
	br label %bb10

bb10:		
	%25 = call  i32 @"\01_fwrite"(i8* getelementptr ([11 x i8], [11 x i8]* @.str1842948, i32 0, i32 0), i32 1, i32 10, i8* undef) nounwind		
	%26 = sub i32 %rowmark, undef		
	%27 = load %struct.FILE*, %struct.FILE** @out_fp, align 4		
	%28 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* %27, i8* getelementptr ([17 x i8], [17 x i8]* @.str212784, i32 0, i32 0), i32 undef, i32 %26) nounwind		
	store i32 0, i32* @cpexists, align 4
	%29 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* undef, i8* getelementptr ([17 x i8], [17 x i8]* @.str192782, i32 0, i32 0), double 2.000000e+01, double 2.000000e+01) nounwind		
	%30 = getelementptr %struct.rec, %struct.rec* %y.0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0		
	%31 = load i32, i32* %30, align 4		
	%32 = sub i32 0, %31		
	%33 = load i32, i32* undef, align 4		
	%34 = sub i32 0, %33		
	%35 = load %struct.FILE*, %struct.FILE** @out_fp, align 4		
	%36 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* %35, i8* getelementptr ([17 x i8], [17 x i8]* @.str212784, i32 0, i32 0), i32 %32, i32 %34) nounwind		
	store i32 0, i32* @cpexists, align 4
	%37 = load %struct.rec*, %struct.rec** null, align 4		
	%38 = getelementptr %struct.rec, %struct.rec* %37, i32 0, i32 0, i32 4		
	%39 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* undef, i8* getelementptr ([23 x i8], [23 x i8]* @.str1852949, i32 0, i32 0), %struct.FOURTH_UNION* %38) nounwind		
	%buff14 = getelementptr [512 x i8], [512 x i8]* %buff, i32 0, i32 0		
	%40 = call  i8* @fgets(i8* %buff14, i32 512, %struct.FILE* %12) nounwind		
	%iftmp.506.0 = select i1 undef, i32 2, i32 0		
	%41 = getelementptr [512 x i8], [512 x i8]* %buff, i32 0, i32 26		
	br label %bb100.outer.outer

bb100.outer.outer:		
	%state.0.ph.ph = phi i32 [ %iftmp.506.0, %bb10 ], [ undef, %bb83 ]		
	%x_addr.0.ph.ph = phi %struct.rec* [ %x, %bb10 ], [ %71, %bb83 ]		
	%42 = getelementptr %struct.rec, %struct.rec* %x_addr.0.ph.ph, i32 0, i32 0, i32 1, i32 0		
	br label %bb100.outer

bb.i80:		
	%43 = icmp eq i8 %44, %46		
	%indvar.next.i79 = add i32 %indvar.i81, 1		
	br i1 %43, label %bb2.i84, label %bb2.i51

bb2.i84:		
	%indvar.i81 = phi i32 [ %indvar.next.i79, %bb.i80 ], [ 0, %bb100.outer ]		
	%pp.0.i82 = getelementptr [27 x i8], [27 x i8]* @.str141878, i32 0, i32 %indvar.i81		
	%sp.0.i83 = getelementptr [512 x i8], [512 x i8]* %buff, i32 0, i32 %indvar.i81		
	%44 = load i8, i8* %sp.0.i83, align 1		
	%45 = icmp eq i8 %44, 0		
	br i1 %45, label %StringBeginsWith.exit88thread-split, label %bb3.i85

bb3.i85:		
	%46 = load i8, i8* %pp.0.i82, align 1		
	%47 = icmp eq i8 %46, 0		
	br i1 %47, label %StringBeginsWith.exit88, label %bb.i80

StringBeginsWith.exit88thread-split:		
	%.pr = load i8, i8* %pp.0.i82		
	br label %StringBeginsWith.exit88

StringBeginsWith.exit88:		
	%48 = phi i8 [ %.pr, %StringBeginsWith.exit88thread-split ], [ %46, %bb3.i85 ]		
	%phitmp91 = icmp eq i8 %48, 0		
	br i1 %phitmp91, label %bb3.i77, label %bb2.i51

bb2.i.i68:		
	br i1 false, label %bb2.i51, label %bb2.i75

bb2.i75:		
	br label %bb3.i77

bb3.i77:		
	%sp.0.i76 = getelementptr [512 x i8], [512 x i8]* %buff, i32 0, i32 undef		
	%49 = load i8, i8* %sp.0.i76, align 1		
	%50 = icmp eq i8 %49, 0		
	br i1 %50, label %bb24, label %bb2.i.i68

bb24:		
	%51 = call  %struct.rec* @MakeWord(i32 11, i8* %41, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*)) nounwind		
	%52 = load i8, i8* getelementptr ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i32 0), align 4		
	%53 = zext i8 %52 to i32		
	%54 = getelementptr [524 x %struct.rec*], [524 x %struct.rec*]* @zz_free, i32 0, i32 %53		
	%55 = load %struct.rec*, %struct.rec** %54, align 4		
	%56 = icmp eq %struct.rec* %55, null		
	br i1 %56, label %bb27, label %bb28

bb27:		
	br i1 undef, label %bb.i56, label %GetMemory.exit62

bb.i56:		
	br i1 undef, label %bb1.i58, label %bb2.i60

bb1.i58:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 31, i32 1, i8* getelementptr ([32 x i8], [32 x i8]* @.str1575, i32 0, i32 0), i32 1, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*)) nounwind
	br label %bb2.i60

bb2.i60:		
	%.pre1.i59 = phi i8** [ undef, %bb1.i58 ], [ undef, %bb.i56 ]		
	store i8** undef, i8*** @top_free.4773, align 4
	br label %GetMemory.exit62

GetMemory.exit62:		
	%57 = phi i8** [ %.pre1.i59, %bb2.i60 ], [ undef, %bb27 ]		
	%58 = getelementptr i8*, i8** %57, i32 %53		
	store i8** %58, i8*** @next_free.4772, align 4
	store %struct.rec* undef, %struct.rec** @zz_hold, align 4
	br label %bb29

bb28:		
	store %struct.rec* %55, %struct.rec** @zz_hold, align 4
	%59 = load %struct.rec*, %struct.rec** null, align 4		
	store %struct.rec* %59, %struct.rec** %54, align 4
	br label %bb29

bb29:		
	%.pre184 = phi %struct.rec* [ %55, %bb28 ], [ undef, %GetMemory.exit62 ]		
	store i8 0, i8* undef
	store %struct.rec* %.pre184, %struct.rec** @xx_link, align 4
	br i1 undef, label %bb35, label %bb31

bb31:		
	store %struct.rec* %.pre184, %struct.rec** undef
	br label %bb35

bb35:		
	br i1 undef, label %bb41, label %bb37

bb37:		
	%60 = load %struct.rec*, %struct.rec** null, align 4		
	store %struct.rec* %60, %struct.rec** undef
	store %struct.rec* undef, %struct.rec** null
	store %struct.rec* %.pre184, %struct.rec** null, align 4
	br label %bb41

bb41:		
	%61 = call  i8* @fgets(i8* %buff14, i32 512, %struct.FILE* %12) nounwind		
	%62 = icmp eq i8* %61, null		
	%iftmp.554.0 = select i1 %62, i32 2, i32 1		
	br label %bb100.outer

bb.i47:		
	%63 = icmp eq i8 %64, %65		
	br i1 %63, label %bb2.i51, label %bb2.i41

bb2.i51:		
	%pp.0.i49 = getelementptr [17 x i8], [17 x i8]* @.str1872951, i32 0, i32 0		
	%64 = load i8, i8* null, align 1		
	br i1 false, label %StringBeginsWith.exit55thread-split, label %bb3.i52

bb3.i52:		
	%65 = load i8, i8* %pp.0.i49, align 1		
	br i1 false, label %StringBeginsWith.exit55, label %bb.i47

StringBeginsWith.exit55thread-split:		
	br label %StringBeginsWith.exit55

StringBeginsWith.exit55:		
	br i1 false, label %bb49, label %bb2.i41

bb49:		
	br label %bb2.i41

bb2.i41:		
	br i1 false, label %bb2.i41, label %bb2.i.i15

bb2.i.i15:		
	%pp.0.i.i13 = getelementptr [6 x i8], [6 x i8]* @.str742838, i32 0, i32 0		
	br i1 false, label %StringBeginsWith.exitthread-split.i18, label %bb3.i.i16

bb3.i.i16:		
	%66 = load i8, i8* %pp.0.i.i13, align 1		
	br label %StringBeginsWith.exit.i20

StringBeginsWith.exitthread-split.i18:		
	br label %StringBeginsWith.exit.i20

StringBeginsWith.exit.i20:		
	%67 = phi i8 [ undef, %StringBeginsWith.exitthread-split.i18 ], [ %66, %bb3.i.i16 ]		
	%phitmp.i19 = icmp eq i8 %67, 0		
	br i1 %phitmp.i19, label %bb58, label %bb2.i6.i26

bb2.i6.i26:		
	%indvar.i3.i23 = phi i32 [ %indvar.next.i1.i21, %bb2.i6.i26 ], [ 0, %StringBeginsWith.exit.i20 ]		
	%sp.0.i5.i25 = getelementptr [512 x i8], [512 x i8]* %buff, i32 0, i32 %indvar.i3.i23		
	%pp.0.i4.i24 = getelementptr [10 x i8], [10 x i8]* @.str752839, i32 0, i32 %indvar.i3.i23		
	%68 = load i8, i8* %pp.0.i4.i24, align 1		
	%indvar.next.i1.i21 = add i32 %indvar.i3.i23, 1		
	br i1 undef, label %bb2.i6.i26, label %bb55

bb55:		
	%69 = call  i32 @"\01_fputs"(i8* %buff14, %struct.FILE* undef) nounwind		
	unreachable

bb58:		
	%70 = call  i8* @fgets(i8* %buff14, i32 512, %struct.FILE* %12) nounwind		
	%iftmp.560.0 = select i1 undef, i32 2, i32 0		
	br label %bb100.outer

bb.i7:		
	br i1 false, label %bb2.i8, label %bb2.i.i

bb2.i8:		
	br i1 undef, label %StringBeginsWith.exitthread-split, label %bb3.i

bb3.i:		
	br i1 undef, label %StringBeginsWith.exit, label %bb.i7

StringBeginsWith.exitthread-split:		
	br label %StringBeginsWith.exit

StringBeginsWith.exit:		
	%phitmp93 = icmp eq i8 undef, 0		
	br i1 %phitmp93, label %bb66, label %bb2.i.i

bb66:		
	%71 = call  %struct.rec* @MakeWord(i32 11, i8* undef, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*)) nounwind		
	%72 = load i8, i8* getelementptr ([150 x i8], [150 x i8]* @zz_lengths, i32 0, i32 0), align 4		
	%73 = zext i8 %72 to i32		
	%74 = getelementptr [524 x %struct.rec*], [524 x %struct.rec*]* @zz_free, i32 0, i32 %73		
	%75 = load %struct.rec*, %struct.rec** %74, align 4		
	%76 = icmp eq %struct.rec* %75, null		
	br i1 %76, label %bb69, label %bb70

bb69:		
	br i1 undef, label %bb.i2, label %GetMemory.exit

bb.i2:		
	%77 = call  noalias i8* @calloc(i32 1020, i32 4) nounwind		
	%78 = bitcast i8* %77 to i8**		
	store i8** %78, i8*** @next_free.4772, align 4
	br i1 undef, label %bb1.i3, label %bb2.i4

bb1.i3:		
	call  void (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 31, i32 1, i8* getelementptr ([32 x i8], [32 x i8]* @.str1575, i32 0, i32 0), i32 1, %struct.FILE_POS* bitcast (%4* @no_file_pos to %struct.FILE_POS*)) nounwind
	br label %bb2.i4

bb2.i4:		
	%.pre1.i = phi i8** [ undef, %bb1.i3 ], [ %78, %bb.i2 ]		
	%79 = phi i8** [ undef, %bb1.i3 ], [ %78, %bb.i2 ]		
	%80 = getelementptr i8*, i8** %79, i32 1020		
	store i8** %80, i8*** @top_free.4773, align 4
	br label %GetMemory.exit

GetMemory.exit:		
	%81 = phi i8** [ %.pre1.i, %bb2.i4 ], [ undef, %bb69 ]		
	%82 = bitcast i8** %81 to %struct.rec*		
	%83 = getelementptr i8*, i8** %81, i32 %73		
	store i8** %83, i8*** @next_free.4772, align 4
	store %struct.rec* %82, %struct.rec** @zz_hold, align 4
	br label %bb71

bb70:		
	%84 = load %struct.rec*, %struct.rec** null, align 4		
	store %struct.rec* %84, %struct.rec** %74, align 4
	br label %bb71

bb71:		
	%.pre185 = phi %struct.rec* [ %75, %bb70 ], [ %82, %GetMemory.exit ]		
	%85 = phi %struct.rec* [ %75, %bb70 ], [ %82, %GetMemory.exit ]		
	%86 = getelementptr %struct.rec, %struct.rec* %85, i32 0, i32 0, i32 1, i32 0, i32 0		
	%87 = getelementptr %struct.rec, %struct.rec* %.pre185, i32 0, i32 0, i32 0, i32 1, i32 1		
	%88 = getelementptr %struct.rec, %struct.rec* %.pre185, i32 0, i32 0, i32 0, i32 1, i32 0		
	store %struct.rec* %.pre185, %struct.rec** @xx_link, align 4
	store %struct.rec* %.pre185, %struct.rec** @zz_res, align 4
	%89 = load %struct.rec*, %struct.rec** @needs, align 4		
	store %struct.rec* %89, %struct.rec** @zz_hold, align 4
	br i1 false, label %bb77, label %bb73

bb73:		
	%90 = getelementptr %struct.rec, %struct.rec* %89, i32 0, i32 0, i32 0, i32 0, i32 0		
	store %struct.rec* null, %struct.rec** @zz_tmp, align 4
	store %struct.rec* %.pre185, %struct.rec** %90
	store %struct.rec* %.pre185, %struct.rec** undef, align 4
	br label %bb77

bb77:		
	store %struct.rec* %.pre185, %struct.rec** @zz_res, align 4
	store %struct.rec* %71, %struct.rec** @zz_hold, align 4
	br i1 undef, label %bb83, label %bb79

bb79:		
	%91 = getelementptr %struct.rec, %struct.rec* %71, i32 0, i32 0, i32 0, i32 1, i32 0		
	store %struct.rec* null, %struct.rec** @zz_tmp, align 4
	%92 = load %struct.rec*, %struct.rec** %88, align 4		
	store %struct.rec* %92, %struct.rec** %91
	%93 = getelementptr %struct.rec, %struct.rec* undef, i32 0, i32 0, i32 0, i32 1, i32 1		
	store %struct.rec* %71, %struct.rec** %93, align 4
	store %struct.rec* %.pre185, %struct.rec** undef, align 4
	br label %bb83

bb83:		
	br label %bb100.outer.outer

bb.i.i:		
	br i1 undef, label %bb2.i.i, label %bb2.i6.i

bb2.i.i:		
	br i1 undef, label %StringBeginsWith.exitthread-split.i, label %bb3.i.i

bb3.i.i:		
	br i1 undef, label %StringBeginsWith.exit.i, label %bb.i.i

StringBeginsWith.exitthread-split.i:		
	br label %StringBeginsWith.exit.i

StringBeginsWith.exit.i:		
	br i1 false, label %bb94, label %bb2.i6.i

bb.i2.i:		
	br i1 false, label %bb2.i6.i, label %bb91

bb2.i6.i:		
	br i1 undef, label %strip_out.exitthread-split, label %bb3.i7.i

bb3.i7.i:		
	%94 = load i8, i8* undef, align 1		
	br i1 undef, label %strip_out.exit, label %bb.i2.i

strip_out.exitthread-split:		
	%.pr100 = load i8, i8* undef		
	br label %strip_out.exit

strip_out.exit:		
	%95 = phi i8 [ %.pr100, %strip_out.exitthread-split ], [ %94, %bb3.i7.i ]		
	br i1 undef, label %bb94, label %bb91

bb91:		
	unreachable

bb94:		
	%96 = call  i8* @fgets(i8* %buff14, i32 512, %struct.FILE* %12) nounwind		
	unreachable

bb100.outer:		
	%state.0.ph = phi i32 [ %state.0.ph.ph, %bb100.outer.outer ], [ %iftmp.560.0, %bb58 ], [ %iftmp.554.0, %bb41 ]		
	switch i32 %state.0.ph, label %bb2.i84 [
		i32 2, label %bb101.split
		i32 1, label %bb2.i8
	]

bb101.split:		
	%97 = icmp eq i32 undef, 0		
	br i1 %97, label %bb103, label %bb102

bb102:		
	%98 = call  i32 @remove(i8* getelementptr ([9 x i8], [9 x i8]* @.str19294, i32 0, i32 0)) nounwind		
	unreachable

bb103:		
	%99 = load %struct.FILE*, %struct.FILE** @out_fp, align 4		
	%100 = call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* %99, i8* getelementptr ([26 x i8], [26 x i8]* @.str1932957, i32 0, i32 0)) nounwind		
	store i32 0, i32* @wordcount, align 4
	ret void
}
