

	%struct.PerlInterpreter = type { i8 }
@PL_sv_count = external global i32		

define void @perl_destruct(%struct.PerlInterpreter* %sv_interp) {
entry:
	br i1 false, label %cond_next25, label %cond_true16

cond_true16:		
	ret void

cond_next25:		
	br i1 false, label %cond_next33, label %cond_true32

cond_true32:		
	ret void

cond_next33:		
	br i1 false, label %cond_next61, label %cond_true.i46

cond_true.i46:		
	ret void

cond_next61:		
	br i1 false, label %cond_next69, label %cond_true66

cond_true66:		
	ret void

cond_next69:		
	br i1 false, label %Perl_safefree.exit52, label %cond_true.i50

cond_true.i50:		
	ret void

Perl_safefree.exit52:		
	br i1 false, label %cond_next80, label %cond_true77

cond_true77:		
	ret void

cond_next80:		
	br i1 false, label %Perl_safefree.exit56, label %cond_true.i54

cond_true.i54:		
	ret void

Perl_safefree.exit56:		
	br i1 false, label %Perl_safefree.exit60, label %cond_true.i58

cond_true.i58:		
	ret void

Perl_safefree.exit60:		
	br i1 false, label %Perl_safefree.exit64, label %cond_true.i62

cond_true.i62:		
	ret void

Perl_safefree.exit64:		
	br i1 false, label %Perl_safefree.exit68, label %cond_true.i66

cond_true.i66:		
	ret void

Perl_safefree.exit68:		
	br i1 false, label %cond_next150, label %cond_true23.i

cond_true23.i:		
	ret void

cond_next150:		
	%tmp16092 = load i32, i32* @PL_sv_count, align 4		
	br label %cond_next165

bb157:		
	%tmp158 = load i32, i32* @PL_sv_count, align 4		
	br label %cond_next165

cond_next165:		
	br i1 false, label %bb171, label %bb157

bb171:		
	ret void
}
