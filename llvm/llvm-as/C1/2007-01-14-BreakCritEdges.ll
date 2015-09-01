


	%struct.OggVorbis_File = type { i8*, i32, i64, i64, %struct.ogg_sync_state, i32, i64*, i64*, i32*, i64*, %struct.vorbis_info*, %struct.vorbis_comment*, i64, i32, i32, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
	%struct.alloc_chain = type { i8*, %struct.alloc_chain* }
	%struct.ogg_stream_state = type { i8*, i32, i32, i32, i32*, i64*, i32, i32, i32, i32, [282 x i8], i32, i32, i32, i32, i32, i64, i64 }
	%struct.ogg_sync_state = type { i8*, i32, i32, i32, i32, i32, i32 }
	%struct.oggpack_buffer = type { i32, i32, i8*, i8*, i32 }
	%struct.ov_callbacks = type { i32 (i8*, i32, i32, i8*)*, i32 (i8*, i64, i32)*, i32 (i8*)*, i32 (i8*)* }
	%struct.vorbis_block = type { float**, %struct.oggpack_buffer, i32, i32, i32, i32, i32, i32, i64, i64, %struct.vorbis_dsp_state*, i8*, i32, i32, i32, %struct.alloc_chain*, i32, i32, i32, i32, i8* }
	%struct.vorbis_comment = type { i8**, i32*, i32, i8* }
	%struct.vorbis_dsp_state = type { i32, %struct.vorbis_info*, float**, float**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8* }
	%struct.vorbis_info = type { i32, i32, i32, i32, i32, i32, i32, i8* }


define void @ov_read() {
entry:
	br i1 false, label %bb, label %return

bb:		
	br i1 false, label %cond_true8, label %cond_next15

cond_true8:		
	br i1 false, label %cond_next15, label %bb29

cond_next15:		
	br i1 false, label %return, label %cond_next22

cond_next22:		
	br i1 false, label %bb, label %return

bb29:		
	br i1 false, label %cond_true32, label %return

cond_true32:		
	br i1 false, label %cond_false37.i, label %cond_true.i11

cond_true.i11:		
	br i1 false, label %cond_true8.i, label %ov_info.exit

cond_true8.i:		
	br i1 false, label %cond_true44, label %cond_next48

cond_false37.i:		
	br label %ov_info.exit

ov_info.exit:		
	br i1 false, label %cond_true44, label %cond_next48

cond_true44:		
	br label %cond_next48

cond_next48:		
	br i1 false, label %cond_next53, label %return

cond_next53:		
	br i1 false, label %cond_true56, label %cond_false97

cond_true56:		
	br i1 false, label %bb85, label %cond_next304

bb63:		
	br i1 false, label %cond_next78, label %cond_false73

cond_false73:		
	br i1 false, label %cond_true76, label %cond_next78

cond_true76:		
	br label %cond_next78

cond_next78:		
	br label %bb85

bb85:		
	br i1 false, label %bb63, label %bb89

bb89:		
	br i1 false, label %bb85, label %cond_next304

cond_false97:		
	br i1 false, label %cond_true108, label %bb248

cond_true108:		
	br i1 false, label %bb196, label %bb149

bb112:		
	br i1 false, label %bb119, label %bb146

bb119:		
	br i1 false, label %cond_next134, label %cond_false129

cond_false129:		
	br i1 false, label %cond_true132, label %cond_next134

cond_true132:		
	br label %cond_next134

cond_next134:		
	br i1 false, label %bb119, label %bb146

bb146:		
	br i1 false, label %bb112, label %cond_next304

bb149:		
	br i1 false, label %bb112, label %cond_next304

bb155:		
	br i1 false, label %bb165, label %bb193

bb165:		
	br i1 false, label %cond_next180, label %cond_false175

cond_false175:		
	br i1 false, label %cond_true178, label %cond_next180

cond_true178:		
	br label %cond_next180

cond_next180:		
	br i1 false, label %bb165, label %bb193

bb193:		
	br i1 false, label %bb155, label %cond_next304

bb196:		
	br i1 false, label %bb155, label %cond_next304

bb207:		
	br i1 false, label %cond_next225, label %cond_false220

cond_false220:		
	br i1 false, label %cond_true223, label %cond_next225

cond_true223:		
	br label %cond_next225

cond_next225:		
	br label %bb241

bb241:		
	br i1 false, label %bb207, label %bb245

bb245:		
	br i1 false, label %bb241, label %cond_next304

bb248:		
	br i1 false, label %bb241, label %cond_next304

bb256:		
	br i1 false, label %cond_next274, label %cond_false269

cond_false269:		
	br i1 false, label %cond_true272, label %cond_next274

cond_true272:		
	br label %cond_next274

cond_next274:		
	br label %bb290

bb290:		
	br i1 false, label %bb256, label %bb294

bb294:		
	br i1 false, label %bb290, label %cond_next304

cond_next304:		
	br i1 false, label %cond_next11.i, label %cond_true.i

cond_true.i:		
	br i1 false, label %vorbis_synthesis_read.exit, label %cond_next11.i

cond_next11.i:		
	br label %vorbis_synthesis_read.exit

vorbis_synthesis_read.exit:		
	br i1 false, label %cond_next321, label %cond_true316

cond_true316:		
	ret void

cond_next321:		
	ret void

return:		
	ret void
}
