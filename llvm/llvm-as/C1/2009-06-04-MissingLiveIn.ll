

	%struct.anon = type { i16, i16 }
	%struct.cab_archive = type { i32, i16, i16, i16, i16, i8, %struct.cab_folder*, %struct.cab_file* }
	%struct.cab_file = type { i32, i16, i64, i8*, i32, i32, i32, %struct.cab_folder*, %struct.cab_file*, %struct.cab_archive*, %struct.cab_state* }
	%struct.cab_folder = type { i16, i16, %struct.cab_archive*, i64, %struct.cab_folder* }
	%struct.cab_state = type { i8*, i8*, [38912 x i8], i16, i16, i8*, i16 }
	%struct.qtm_model = type { i32, i32, %struct.anon* }
	%struct.qtm_stream = type { i32, i32, i8, i8*, i32, i32, i32, i16, i16, i16, i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8, [42 x i32], [42 x i8], [27 x i8], [27 x i8], %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, [65 x %struct.anon], [65 x %struct.anon], [65 x %struct.anon], [65 x %struct.anon], [25 x %struct.anon], [37 x %struct.anon], [43 x %struct.anon], [28 x %struct.anon], [8 x %struct.anon], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }

declare fastcc i32 @qtm_read_input(%struct.qtm_stream* nocapture) nounwind

define fastcc i32 @qtm_decompress(%struct.qtm_stream* %qtm, i64 %out_bytes) nounwind {
entry:
	br i1 undef, label %bb245, label %bb3

bb3:		
	br i1 undef, label %bb5, label %bb4

bb4:		
	ret i32 undef

bb5:		
	br i1 undef, label %bb245, label %bb14

bb14:		
	br label %bb238

bb28:		
	br label %bb31

bb29:		
	br i1 undef, label %bb31, label %bb32

bb31:		
	br i1 undef, label %bb29, label %bb32

bb32:		
	br label %bb33

bb33:		
	br i1 undef, label %bb34, label %bb33

bb34:		
	br i1 undef, label %bb35, label %bb36

bb35:		
	br label %bb36

bb36:		
	br i1 undef, label %bb40, label %bb37

bb37:		
	br i1 undef, label %bb77, label %bb60

bb40:		
	br i1 undef, label %bb46, label %bb41

bb41:		
	br i1 undef, label %bb45, label %bb42

bb42:		
	ret i32 undef

bb45:		
	br label %bb46

bb46:		
	br label %bb36

bb60:		
	br label %bb60

bb77:		
	switch i32 undef, label %bb197 [
		i32 5, label %bb108
		i32 6, label %bb138
	]

bb108:		
	br label %bb111

bb109:		
	br i1 undef, label %bb111, label %bb112

bb111:		
	br i1 undef, label %bb109, label %bb112

bb112:		
	br label %bb113

bb113:		
	br i1 undef, label %bb114, label %bb113

bb114:		
	br i1 undef, label %bb115, label %bb116

bb115:		
	br label %bb116

bb116:		
	br i1 undef, label %bb120, label %bb117

bb117:		
	br label %bb136

bb120:		
	ret i32 undef

bb128:		
	br i1 undef, label %bb134, label %bb129

bb129:		
	br i1 undef, label %bb133, label %bb130

bb130:		
	br i1 undef, label %bb132, label %bb131

bb131:		
	ret i32 undef

bb132:		
	br label %bb133

bb133:		
	br label %bb134

bb134:		
	br label %bb136

bb136:		
	br i1 undef, label %bb198, label %bb128

bb138:		
	%0 = trunc i32 undef to i16		
	br label %bb141

bb139:		
	%scevgep441442881 = load i16, i16* undef		
	%1 = icmp ugt i16 %scevgep441442881, %0		
	br i1 %1, label %bb141, label %bb142

bb141:		
	br i1 undef, label %bb139, label %bb142

bb142:		
	br label %bb143

bb143:		
	br i1 undef, label %bb144, label %bb143

bb144:		
	br i1 undef, label %bb145, label %bb146

bb145:		
	unreachable

bb146:		
	br i1 undef, label %bb150, label %bb147

bb147:		
	br i1 undef, label %bb157, label %bb148

bb148:		
	br i1 undef, label %bb149, label %bb157

bb149:		
	br label %bb150

bb150:		
	br i1 undef, label %bb156, label %bb152

bb152:		
	unreachable

bb156:		
	br label %bb146

bb157:		
	br i1 undef, label %bb167, label %bb160

bb160:		
	ret i32 undef

bb167:		
	br label %bb170

bb168:		
	br i1 undef, label %bb170, label %bb171

bb170:		
	br i1 undef, label %bb168, label %bb171

bb171:		
	br label %bb172

bb172:		
	br i1 undef, label %bb173, label %bb172

bb173:		
	br i1 undef, label %bb174, label %bb175

bb174:		
	unreachable

bb175:		
	br i1 undef, label %bb179, label %bb176

bb176:		
	br i1 undef, label %bb186, label %bb177

bb177:		
	br i1 undef, label %bb178, label %bb186

bb178:		
	br label %bb179

bb179:		
	br label %bb175

bb186:		
	br label %bb195

bb187:		
	br i1 undef, label %bb193, label %bb189

bb189:		
	%2 = tail call fastcc i32 @qtm_read_input(%struct.qtm_stream* %qtm) nounwind		
	ret i32 undef

bb193:		
	br label %bb195

bb195:		
	br i1 undef, label %bb198, label %bb187

bb197:		
	ret i32 -124

bb198:		
	br i1 undef, label %bb211.preheader, label %bb214

bb211.preheader:		
	br label %bb211

bb211:		
	br i1 undef, label %bb214, label %bb211

bb214:		
	br label %bb215

bb215:		
	br i1 undef, label %bb28, label %bb216

bb216:		
	br label %bb238

bb238:		
	br label %bb215

bb245:		
	ret i32 undef
}
