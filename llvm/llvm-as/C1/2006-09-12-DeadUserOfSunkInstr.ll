



	%struct.alloc_chain = type { i8*, %struct.alloc_chain* }
	%struct.oggpack_buffer = type { i32, i32, i8*, i8*, i32 }
	%struct.vorbis_block = type { float**, %struct.oggpack_buffer, i32, i32, i32, i32, i32, i32, i64, i64, %struct.vorbis_dsp_state*, i8*, i32, i32, i32, %struct.alloc_chain*, i32, i32, i32, i32, i8* }
	%struct.vorbis_dsp_state = type { i32, %struct.vorbis_info*, float**, float**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8* }
	%struct.vorbis_info = type { i32, i32, i32, i32, i32, i32, i32, i8* }

define fastcc void @_01forward() {
entry:
	br i1 false, label %bb222.preheader, label %bb241
cond_true67:		
	br label %cond_next80
cond_next80:		
	br label %bb83
bb83.preheader:		
	br i1 false, label %bb83.us.preheader, label %bb83.preheader1
bb83.us.preheader:		
	br label %bb83.us
bb83.us:		
	br i1 false, label %cond_true87.us, label %cond_next92.loopexit2
cond_next80.us:		
	br label %bb83.us
cond_true67.us:		
	br label %cond_next80.us
cond_next.us:		
	br i1 false, label %cond_true56.us, label %bb59.loopexit.us
cond_true38.us:		
	br label %cond_next.us
cond_true56.us:		
	br i1 false, label %cond_true38.us, label %cond_next.us
cond_true87.us:		
	br label %cond_true56.us
bb59.loopexit.us:		
	br i1 false, label %cond_true67.us, label %cond_next80.us
bb83.preheader1:		
	br label %bb83
bb83:		
	br i1 false, label %cond_next92.loopexit, label %cond_true87
cond_true87:		
	br i1 false, label %cond_true67, label %cond_next80
cond_next92.loopexit:		
	br label %cond_next92
cond_next92.loopexit2:		
	br label %cond_next92
cond_next92:		
	br i1 false, label %cond_true218.loopexit, label %bb222
cond_true139:		
	br i1 false, label %cond_next195, label %cond_true155
cond_true155:		
	br i1 false, label %cond_true249.i.preheader, label %_encodepart.exit
cond_true.i:		
	br i1 false, label %bb60.i.preheader, label %cond_next97.i
bb60.i.preheader:		
	br label %bb60.i
bb60.i:		
	br i1 false, label %cond_true63.i, label %cond_next97.i.loopexit
cond_true63.i:		
	br i1 false, label %bb60.i, label %cond_next97.i.loopexit
bb86.i.preheader:		
	br label %bb86.i
bb86.i:		
	br i1 false, label %cond_true93.i, label %cond_next97.i.loopexit3
cond_true93.i:		
	br i1 false, label %cond_next97.i.loopexit3, label %bb86.i
cond_next97.i.loopexit:		
	br label %cond_next97.i
cond_next97.i.loopexit3:		
	br label %cond_next97.i
cond_next97.i:		
	br i1 false, label %bb118.i.loopexit, label %cond_true115.i
cond_true115.i.preheader:		
	br label %cond_true115.i
cond_true115.i:		
	br i1 false, label %cond_true.i, label %bb86.i.preheader
bb118.i.loopexit:		
	br label %bb118.i
bb118.i:		
	br i1 false, label %cond_next204.i, label %cond_true128.i
cond_true128.i:		
	br i1 false, label %cond_true199.i.preheader, label %cond_next204.i
cond_true199.i.preheader:		
	br label %cond_true199.i
cond_true199.i.us:		
	br i1 false, label %cond_true167.i.us, label %cond_next187.i.us
cond_next187.i.us:		
	unreachable
bb170.i.us.cond_next187.i.us_crit_edge:		
	br label %cond_next187.i.us
cond_true167.i.us:		
	br i1 false, label %cond_true167.i.us, label %bb170.i.loopexit.us
bb170.i.loopexit.us:		
	br i1 false, label %cond_next187.i.us, label %bb170.i.us.cond_next187.i.us_crit_edge
cond_true199.i:		
	br i1 false, label %cond_next204.i.loopexit, label %cond_true199.i
cond_next204.i.loopexit:		
	br label %cond_next204.i
cond_next204.i:		
	br label %bb233.i
cond_true230.i:		
	%exitcond155 = icmp eq i32 0, %tmp16.i		
	unreachable
bb233.i:		
	br i1 false, label %_encodepart.exit.loopexit, label %cond_true249.i
cond_true249.i.preheader:		
	br label %cond_true249.i
cond_true249.i:		
	%tmp16.i = bitcast i32 0 to i32		
	br i1 false, label %cond_true115.i.preheader, label %bb118.i
_encodepart.exit.loopexit:		
	br label %_encodepart.exit
_encodepart.exit:		
	br label %cond_next195
cond_next195:		
	br i1 false, label %bb205.loopexit, label %cond_true202
cond_true202.preheader:		
	br label %cond_true202
cond_true202:		
	br i1 false, label %cond_next195, label %cond_true139
bb205.loopexit:		
	br label %bb205
bb205:		
	br i1 false, label %cond_true218, label %bb222.outer105.loopexit
cond_true218.loopexit:		
	br label %cond_true218
cond_true218:		
	br i1 false, label %cond_true202.preheader, label %bb205
bb222.preheader:		
	br label %bb222.outer
bb222.outer:		
	br label %bb222.outer105
bb222.outer105.loopexit:		
	br label %bb222.outer105
bb222.outer105:		
	br label %bb222
bb222:		
	br i1 false, label %cond_true226, label %bb229
cond_true226:		
	br i1 false, label %bb83.preheader, label %cond_next92
bb229:		
	br i1 false, label %bb222.outer, label %bb241.loopexit
bb241.loopexit:		
	br label %bb241
bb241:		
	ret void
}
