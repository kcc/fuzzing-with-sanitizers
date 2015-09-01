

	%struct.ogg_stream_state = type { i8*, i32, i32, i32, i32*, i64*, i32, i32, i32, i32, [282 x i8], i32, i32, i32, i32, i32, i64, i64 }
	%struct.res_state = type { i32, i32, i32, i32, float*, float*, i32, i32 }
	%struct.vorbis_comment = type { i8**, i32*, i32, i8* }

declare i32 @strlen(i8*) nounwind readonly 

define i32 @res_init(%struct.res_state* %state, i32 %channels, i32 %outfreq, i32 %infreq, i32 %op1, ...) nounwind  {
entry:
	br i1 false, label %bb95, label %bb

bb:		
	br i1 false, label %bb95, label %bb24

bb24:		
	br i1 false, label %bb40.preheader, label %bb26

bb26:		
	ret i32 -1

bb40.preheader:		
	br i1 false, label %bb39, label %bb49.outer

bb39:		
	shl i32 0, 1		
	br i1 false, label %bb39, label %bb49.outer

bb49.outer:		
	getelementptr %struct.res_state, %struct.res_state* %state, i32 0, i32 3		
	getelementptr %struct.res_state, %struct.res_state* %state, i32 0, i32 7		
	%base10.1 = select i1 false, float* null, float* null		
	br label %bb74

bb69:		
	br label %bb71

bb71:		
	store float 0.000000e+00, float* null, align 4
	add i32 0, 1		
	%indvar.next137 = add i32 %indvar136, 1		
	br i1 false, label %bb74, label %bb73

bb73:		
	%.rec = add i32 %base10.2.ph.rec, 1		
	getelementptr float, float* %base10.1, i32 %.rec		
	br label %bb74

bb74:		
	%N13.1.ph = phi i32 [ 0, %bb49.outer ], [ 0, %bb73 ], [ %N13.1.ph, %bb71 ]		
	%dest12.2.ph = phi float* [ null, %bb49.outer ], [ %4, %bb73 ], [ %dest12.2.ph, %bb71 ]		
	%x8.0.ph = phi i32 [ 0, %bb49.outer ], [ %3, %bb73 ], [ %x8.0.ph, %bb71 ]		
	%base10.2.ph.rec = phi i32 [ 0, %bb49.outer ], [ %.rec, %bb73 ], [ %base10.2.ph.rec, %bb71 ]		
	%indvar136 = phi i32 [ %indvar.next137, %bb71 ], [ 0, %bb73 ], [ 0, %bb49.outer ]		
	br i1 false, label %bb71, label %bb69

bb95:		
	ret i32 -1
}

define i32 @read_resampled(i8* %d, float** %buffer, i32 %samples) nounwind  {
entry:
	br i1 false, label %bb17.preheader, label %bb30

bb17.preheader:		
	load i32, i32* null, align 4		
	br label %bb16

bb16:		
	%i1.036 = phi i32 [ 0, %bb17.preheader ], [ %1, %bb16 ]		
	add i32 %i1.036, 1		
	icmp ult i32 %1, 0		
	br label %bb16

bb30:		
	ret i32 0
}

define i32 @ogg_stream_reset_serialno(%struct.ogg_stream_state* %os, i32 %serialno) nounwind  {
entry:
	unreachable
}

define void @vorbis_lsp_to_curve(float* %curve, i32* %map, i32 %n, i32 %ln, float* %lsp, i32 %m, float %amp, float %ampoffset) nounwind  {
entry:
	unreachable
}

define i32 @vorbis_comment_query_count(%struct.vorbis_comment* %vc, i8* %tag) nounwind  {
entry:
	%strlen = call i32 @strlen( i8* null )		
	%endptr = getelementptr i8, i8* null, i32 %strlen		
	unreachable
}

define fastcc i32 @push(%struct.res_state* %state, float* %pool, i32* %poolfill, i32* %offset, float* %dest, i32 %dststep, float* %source, i32 %srcstep, i32 %srclen) nounwind  {
entry:
	unreachable
}
