

	%struct.SV = type { i8*, i64, i64 }
@"\01LC25" = external constant [8 x i8]		

declare void @Perl_sv_catpvf(%struct.SV*, i8*, ...) nounwind 

declare fastcc i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i64) nounwind 

define fastcc i8* @Perl_pv_uni_display(%struct.SV* %dsv, i8* %spv, i64 %len, i64 %pvlim, i64 %flags) nounwind  {
entry:
	br i1 false, label %bb, label %bb40

bb:		
	tail call fastcc i64 @Perl_utf8n_to_uvuni( i8* null, i64 13, i64* null, i64 255 ) nounwind 		
	br i1 false, label %bb6, label %bb33

bb6:		
	br i1 false, label %bb30, label %bb31

bb30:		
	unreachable

bb31:		
	icmp eq i8 0, 0		
	br label %bb33

bb33:		
	tail call void (%struct.SV*, i8*, ...) @Perl_sv_catpvf( %struct.SV* %dsv, i8* getelementptr ([8 x i8], [8 x i8]* @"\01LC25", i32 0, i64 0), i64 %0 ) nounwind 
	unreachable

bb40:		
	ret i8* null
}
