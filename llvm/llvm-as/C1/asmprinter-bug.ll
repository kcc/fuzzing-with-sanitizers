

	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct.adpcm_state = type { i16, i8 }
@stepsizeTable = internal constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767]		
@indexTable = internal constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8]		
@abuf = common global [500 x i8] zeroinitializer		
@.str = private constant [11 x i8] c"input file\00", section "__TEXT,__cstring,cstring_literals", align 1		
@sbuf = common global [1000 x i16] zeroinitializer		
@state = common global %struct.adpcm_state zeroinitializer		
@__stderrp = external global %struct.FILE*		
@.str1 = private constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", section "__TEXT,__cstring,cstring_literals", align 1		

define void @adpcm_coder(i16* nocapture %indata, i8* nocapture %outdata, i32 %len, %struct.adpcm_state* nocapture %state) nounwind {
entry:
	%0 = getelementptr %struct.adpcm_state, %struct.adpcm_state* %state, i32 0, i32 0		
	%1 = load i16, i16* %0, align 2		
	%2 = sext i16 %1 to i32		
	%3 = getelementptr %struct.adpcm_state, %struct.adpcm_state* %state, i32 0, i32 1		
	%4 = load i8, i8* %3, align 2		
	%5 = sext i8 %4 to i32		
	%6 = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %5		
	%7 = load i32, i32* %6, align 4		
	%8 = icmp sgt i32 %len, 0		
	br i1 %8, label %bb, label %bb27

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb25 ]		
	%outp.136 = phi i8* [ %outdata, %entry ], [ %outp.0, %bb25 ]		
	%bufferstep.035 = phi i32 [ 1, %entry ], [ %tmp, %bb25 ]		
	%outputbuffer.134 = phi i32 [ undef, %entry ], [ %outputbuffer.0, %bb25 ]		
	%index.033 = phi i32 [ %5, %entry ], [ %index.2, %bb25 ]		
	%valpred.132 = phi i32 [ %2, %entry ], [ %valpred.2, %bb25 ]		
	%step.031 = phi i32 [ %7, %entry ], [ %36, %bb25 ]		
	%inp.038 = getelementptr i16, i16* %indata, i32 %indvar		
	%9 = load i16, i16* %inp.038, align 2		
	%10 = sext i16 %9 to i32		
	%11 = sub i32 %10, %valpred.132		
	%12 = icmp slt i32 %11, 0		
	%iftmp.1.0 = select i1 %12, i32 8, i32 0		
	%13 = sub i32 0, %11		
	%14 = icmp eq i32 %iftmp.1.0, 0		
	%. = select i1 %14, i32 %11, i32 %13		
	%15 = ashr i32 %step.031, 3		
	%16 = icmp slt i32 %., %step.031		
	%delta.0 = select i1 %16, i32 0, i32 4		
	%17 = select i1 %16, i32 0, i32 %step.031		
	%diff.1 = sub i32 %., %17		
	%18 = ashr i32 %step.031, 1		
	%19 = icmp slt i32 %diff.1, %18		
	%20 = or i32 %delta.0, 2		
	%21 = select i1 %19, i32 %delta.0, i32 %20		
	%22 = select i1 %19, i32 0, i32 %18		
	%diff.2 = sub i32 %diff.1, %22		
	%23 = ashr i32 %step.031, 2		
	%24 = icmp slt i32 %diff.2, %23		
	%25 = zext i1 %24 to i32		
	%26 = select i1 %24, i32 0, i32 %23		
	%vpdiff.0 = add i32 %17, %15		
	%vpdiff.1 = add i32 %vpdiff.0, %22		
	%vpdiff.2 = add i32 %vpdiff.1, %26		
	%tmp30 = sub i32 0, %vpdiff.2		
	%valpred.0.p = select i1 %14, i32 %vpdiff.2, i32 %tmp30		
	%valpred.0 = add i32 %valpred.0.p, %valpred.132		
	%27 = icmp sgt i32 %valpred.0, 32767		
	br i1 %27, label %bb18, label %bb16

bb16:		
	%28 = icmp slt i32 %valpred.0, -32768		
	br i1 %28, label %bb17, label %bb18

bb17:		
	br label %bb18

bb18:		
	%valpred.2 = phi i32 [ -32768, %bb17 ], [ 32767, %bb ], [ %valpred.0, %bb16 ]		
	%delta.1 = or i32 %21, %iftmp.1.0		
	%delta.2 = or i32 %delta.1, %25		
	%29 = xor i32 %delta.2, 1		
	%30 = getelementptr [16 x i32], [16 x i32]* @indexTable, i32 0, i32 %29		
	%31 = load i32, i32* %30, align 4		
	%32 = add i32 %31, %index.033		
	%33 = icmp slt i32 %32, 0		
	%index.1 = select i1 %33, i32 0, i32 %32		
	%34 = icmp sgt i32 %index.1, 88		
	%index.2 = select i1 %34, i32 88, i32 %index.1		
	%35 = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %index.2		
	%36 = load i32, i32* %35, align 4		
	%37 = icmp eq i32 %bufferstep.035, 0		
	br i1 %37, label %bb24, label %bb23

bb23:		
	%38 = shl i32 %29, 4		
	%39 = and i32 %38, 240		
	br label %bb25

bb24:		
	%40 = trunc i32 %29 to i8		
	%41 = and i8 %40, 15		
	%42 = trunc i32 %outputbuffer.134 to i8		
	%43 = or i8 %41, %42		
	store i8 %43, i8* %outp.136, align 1
	%44 = getelementptr i8, i8* %outp.136, i32 1		
	br label %bb25

bb25:		
	%outputbuffer.0 = phi i32 [ %39, %bb23 ], [ %outputbuffer.134, %bb24 ]		
	%outp.0 = phi i8* [ %outp.136, %bb23 ], [ %44, %bb24 ]		
	%tmp = xor i32 %bufferstep.035, 1		
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, %len		
	br i1 %exitcond, label %bb26.bb27_crit_edge, label %bb

bb26.bb27_crit_edge:		
	%phitmp44 = icmp eq i32 %bufferstep.035, 1		
	br label %bb27

bb27:		
	%outp.1.lcssa = phi i8* [ %outp.0, %bb26.bb27_crit_edge ], [ %outdata, %entry ]		
	%bufferstep.0.lcssa = phi i1 [ %phitmp44, %bb26.bb27_crit_edge ], [ false, %entry ]		
	%outputbuffer.1.lcssa = phi i32 [ %outputbuffer.0, %bb26.bb27_crit_edge ], [ undef, %entry ]		
	%index.0.lcssa = phi i32 [ %index.2, %bb26.bb27_crit_edge ], [ %5, %entry ]		
	%valpred.1.lcssa = phi i32 [ %valpred.2, %bb26.bb27_crit_edge ], [ %2, %entry ]		
	br i1 %bufferstep.0.lcssa, label %bb28, label %bb29

bb28:		
	%45 = trunc i32 %outputbuffer.1.lcssa to i8		
	store i8 %45, i8* %outp.1.lcssa, align 1
	br label %bb29

bb29:		
	%46 = trunc i32 %valpred.1.lcssa to i16		
	store i16 %46, i16* %0, align 2
	%47 = trunc i32 %index.0.lcssa to i8		
	store i8 %47, i8* %3, align 2
	ret void
}

define void @adpcm_decoder(i8* nocapture %indata, i16* nocapture %outdata, i32 %len, %struct.adpcm_state* nocapture %state) nounwind {
entry:
	%0 = getelementptr %struct.adpcm_state, %struct.adpcm_state* %state, i32 0, i32 0		
	%1 = load i16, i16* %0, align 2		
	%2 = sext i16 %1 to i32		
	%3 = getelementptr %struct.adpcm_state, %struct.adpcm_state* %state, i32 0, i32 1		
	%4 = load i8, i8* %3, align 2		
	%5 = sext i8 %4 to i32		
	%6 = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %5		
	%7 = load i32, i32* %6, align 4		
	%8 = icmp sgt i32 %len, 0		
	br i1 %8, label %bb, label %bb22

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb20 ]		
	%inp.131 = phi i8* [ %indata, %entry ], [ %inp.0, %bb20 ]		
	%bufferstep.028 = phi i32 [ 0, %entry ], [ %tmp, %bb20 ]		
	%inputbuffer.127 = phi i32 [ undef, %entry ], [ %inputbuffer.0, %bb20 ]		
	%index.026 = phi i32 [ %5, %entry ], [ %index.2, %bb20 ]		
	%valpred.125 = phi i32 [ %2, %entry ], [ %valpred.2, %bb20 ]		
	%step.024 = phi i32 [ %7, %entry ], [ %35, %bb20 ]		
	%outp.030 = getelementptr i16, i16* %outdata, i32 %indvar		
	%9 = icmp eq i32 %bufferstep.028, 0		
	br i1 %9, label %bb2, label %bb3

bb2:		
	%10 = load i8, i8* %inp.131, align 1		
	%11 = sext i8 %10 to i32		
	%12 = getelementptr i8, i8* %inp.131, i32 1		
	%13 = ashr i32 %11, 4		
	br label %bb3

bb3:		
	%inputbuffer.0 = phi i32 [ %11, %bb2 ], [ %inputbuffer.127, %bb ]		
	%delta.0.in = phi i32 [ %13, %bb2 ], [ %inputbuffer.127, %bb ]		
	%inp.0 = phi i8* [ %12, %bb2 ], [ %inp.131, %bb ]		
	%delta.0 = and i32 %delta.0.in, 15		
	%tmp = xor i32 %bufferstep.028, 1		
	%14 = getelementptr [16 x i32], [16 x i32]* @indexTable, i32 0, i32 %delta.0		
	%15 = load i32, i32* %14, align 4		
	%16 = add i32 %15, %index.026		
	%17 = icmp slt i32 %16, 0		
	%index.1 = select i1 %17, i32 0, i32 %16		
	%18 = icmp sgt i32 %index.1, 88		
	%index.2 = select i1 %18, i32 88, i32 %index.1		
	%19 = and i32 %delta.0.in, 8		
	%20 = ashr i32 %step.024, 3		
	%21 = and i32 %delta.0.in, 4		
	%22 = icmp eq i32 %21, 0		
	%23 = select i1 %22, i32 0, i32 %step.024		
	%vpdiff.0 = add i32 %23, %20		
	%24 = and i32 %delta.0.in, 2		
	%25 = icmp eq i32 %24, 0		
	br i1 %25, label %bb11, label %bb10

bb10:		
	%26 = ashr i32 %step.024, 1		
	%27 = add i32 %vpdiff.0, %26		
	br label %bb11

bb11:		
	%vpdiff.1 = phi i32 [ %27, %bb10 ], [ %vpdiff.0, %bb3 ]		
	%28 = and i32 %delta.0.in, 1		
	%toBool = icmp eq i32 %28, 0		
	br i1 %toBool, label %bb13, label %bb12

bb12:		
	%29 = ashr i32 %step.024, 2		
	%30 = add i32 %vpdiff.1, %29		
	br label %bb13

bb13:		
	%vpdiff.2 = phi i32 [ %30, %bb12 ], [ %vpdiff.1, %bb11 ]		
	%31 = icmp eq i32 %19, 0		
	%tmp23 = sub i32 0, %vpdiff.2		
	%valpred.0.p = select i1 %31, i32 %vpdiff.2, i32 %tmp23		
	%valpred.0 = add i32 %valpred.0.p, %valpred.125		
	%32 = icmp sgt i32 %valpred.0, 32767		
	br i1 %32, label %bb20, label %bb18

bb18:		
	%33 = icmp slt i32 %valpred.0, -32768		
	br i1 %33, label %bb19, label %bb20

bb19:		
	br label %bb20

bb20:		
	%valpred.2 = phi i32 [ -32768, %bb19 ], [ 32767, %bb13 ], [ %valpred.0, %bb18 ]		
	%34 = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i32 %index.2		
	%35 = load i32, i32* %34, align 4		
	%36 = trunc i32 %valpred.2 to i16		
	store i16 %36, i16* %outp.030, align 2
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, %len		
	br i1 %exitcond, label %bb22, label %bb

bb22:		
	%index.0.lcssa = phi i32 [ %5, %entry ], [ %index.2, %bb20 ]		
	%valpred.1.lcssa = phi i32 [ %2, %entry ], [ %valpred.2, %bb20 ]		
	%37 = trunc i32 %valpred.1.lcssa to i16		
	store i16 %37, i16* %0, align 2
	%38 = trunc i32 %index.0.lcssa to i8		
	store i8 %38, i8* %3, align 2
	ret void
}

define i32 @main() nounwind {
entry:
	br label %bb

bb:		
	%0 = tail call  i32 (...) @read(i32 0, i8* getelementptr ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i32 500) nounwind		
	%1 = icmp slt i32 %0, 0		
	br i1 %1, label %bb1, label %bb2

bb1:		
	tail call  void @perror(i8* getelementptr ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) nounwind
	ret i32 1

bb2:		
	%2 = icmp eq i32 %0, 0		
	br i1 %2, label %bb4, label %bb3

bb3:		
	%3 = shl i32 %0, 1		
	tail call  void @adpcm_decoder(i8* getelementptr ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i16* getelementptr ([1000 x i16], [1000 x i16]* @sbuf, i32 0, i32 0), i32 %3, %struct.adpcm_state* @state) nounwind
	%4 = shl i32 %0, 2		
	%5 = tail call  i32 (...) @write(i32 1, i16* getelementptr ([1000 x i16], [1000 x i16]* @sbuf, i32 0, i32 0), i32 %4) nounwind		
	br label %bb

bb4:		
	%6 = load %struct.FILE*, %struct.FILE** @__stderrp, align 4		
	%7 = load i16, i16* getelementptr (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 0), align 4		
	%8 = sext i16 %7 to i32		
	%9 = load i8, i8* getelementptr (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 1), align 2		
	%10 = sext i8 %9 to i32		
	%11 = tail call  i32 (%struct.FILE*, i8*, ...) @fprintf(%struct.FILE* %6, i8* getelementptr ([28 x i8], [28 x i8]* @.str1, i32 0, i32 0), i32 %8, i32 %10) nounwind		
	ret i32 0
}

declare i32 @read(...)

declare void @perror(i8* nocapture) nounwind

declare i32 @write(...)

declare i32 @fprintf(%struct.FILE* nocapture, i8* nocapture, ...) nounwind
