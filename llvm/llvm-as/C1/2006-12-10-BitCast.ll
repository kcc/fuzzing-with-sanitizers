
target datalayout = "e-p:32:32"
target triple = "i686-apple-darwin8"
	%struct.vorbis_dsp_state = type { i32, %struct.vorbis_info*, float**, float**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8* }
	%struct.vorbis_info = type { i32, i32, i32, i32, i32, i32, i32, i8* }

define void @_ve_envelope_search() {
entry:
	br i1 false, label %cond_true27, label %bb137

cond_true27:		
	br i1 false, label %cond_true52, label %bb80

cond_true52:		
	%tmp152.i = bitcast float 0.000000e+00 to i32		
	br label %cond_next182.i

cond_next182.i:		
	%decay.i.0 = phi i32 [ %tmp195.i.upgrd.1, %cond_next182.i ], [ %tmp152.i, %cond_true52 ]		
	%tmp194.i53 = bitcast i32 %decay.i.0 to float		
	%tmp195.i = fsub float %tmp194.i53, 8.000000e+00		
	%tmp195.i.upgrd.1 = bitcast float %tmp195.i to i32		
	br i1 undef, label %cond_next182.i, label %bb418.i.preheader

bb418.i.preheader:		
	ret void

bb80:		
	ret void

bb137:		
	ret void
}
