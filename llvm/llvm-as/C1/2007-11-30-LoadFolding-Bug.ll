



declare fastcc void @rdft(i32, i32, double*, i32*, double*)

define fastcc void @mp_sqrt(i32 %n, i32 %radix, i32* %in, i32* %out, i32* %tmp1, i32* %tmp2, i32 %nfft, double* %tmp1fft, double* %tmp2fft, i32* %ip, double* %w) nounwind {
entry:
	br label %bb.i5

bb.i5:		
	%nfft_init.0.i = phi i32 [ 1, %entry ], [ %tmp7.i3, %bb.i5 ]		
	%foo = phi i1 [1, %entry], [0, %bb.i5]
	%tmp7.i3 = shl i32 %nfft_init.0.i, 1		
	br i1 %foo, label %bb.i5, label %mp_unexp_mp2d.exit.i

mp_unexp_mp2d.exit.i:		
	br i1 %foo, label %cond_next.i, label %cond_true.i

cond_true.i:		
	ret void

cond_next.i:		
	%tmp22.i = sdiv i32 0, 2		
	br i1 %foo, label %cond_true29.i, label %cond_next36.i

cond_true29.i:		
	ret void

cond_next36.i:		
	store i32 %tmp22.i, i32* null, align 4
	%tmp8.i14.i = select i1 %foo, i32 1, i32 0		
	br label %bb.i28.i

bb.i28.i:		



	%j.0.reg2mem.0.i16.i = phi i32 [ 0, %cond_next36.i ], [ %indvar.next39.i, %bb.i28.i ]		
	%din_addr.1.reg2mem.0.i17.i = phi double [ 0.000000e+00, %cond_next36.i ], [ %tmp16.i25.i, %bb.i28.i ]		
	%tmp1.i18.i = fptosi double %din_addr.1.reg2mem.0.i17.i to i32		
	%tmp4.i19.i = icmp slt i32 %tmp1.i18.i, %radix		
	%x.0.i21.i = select i1 %tmp4.i19.i, i32 %tmp1.i18.i, i32 0		
	%tmp41.sum.i = add i32 %j.0.reg2mem.0.i16.i, 2		
	%tmp1213.i23.i = sitofp i32 %x.0.i21.i to double		
	%tmp15.i24.i = fsub double 0.000000e+00, %tmp1213.i23.i		
	%tmp16.i25.i = fmul double 0.000000e+00, %tmp15.i24.i		
	%indvar.next39.i = add i32 %j.0.reg2mem.0.i16.i, 2		
	%exitcond40.i = icmp eq i32 %indvar.next39.i, %tmp8.i14.i		
	br i1 %exitcond40.i, label %mp_unexp_d2mp.exit29.i, label %bb.i28.i

mp_unexp_d2mp.exit29.i:		
	%tmp46.i = sub i32 0, %tmp22.i		
	store i32 %tmp46.i, i32* null, align 4
	br i1 %exitcond40.i, label %bb.i.i, label %mp_sqrt_init.exit

bb.i.i:		
	br label %bb.i.i

mp_sqrt_init.exit:		
	tail call fastcc void @mp_mul_csqu( i32 0, double* %tmp1fft )
	tail call fastcc void @rdft( i32 0, i32 -1, double* null, i32* %ip, double* %w )
	tail call fastcc void @mp_mul_d2i( i32 0, i32 %radix, i32 0, double* %tmp1fft, i32* %tmp2 )
	br i1 %exitcond40.i, label %cond_false.i, label %cond_true36.i

cond_true36.i:		
	ret void

cond_false.i:		
	tail call fastcc void @mp_round( i32 0, i32 %radix, i32 0, i32* %out )
	tail call fastcc void @mp_add( i32 0, i32 %radix, i32* %tmp1, i32* %tmp2, i32* %tmp1 )
	tail call fastcc void @mp_sub( i32 0, i32 %radix, i32* %in, i32* %tmp2, i32* %tmp2 )
	tail call fastcc void @mp_round( i32 0, i32 %radix, i32 0, i32* %tmp1 )
	tail call fastcc void @mp_mul_d2i( i32 0, i32 %radix, i32 %tmp7.i3, double* %tmp2fft, i32* %tmp2 )
	ret void
}

declare fastcc void @mp_add(i32, i32, i32*, i32*, i32*)

declare fastcc void @mp_sub(i32, i32, i32*, i32*, i32*)

declare fastcc void @mp_round(i32, i32, i32, i32*)

declare fastcc void @mp_mul_csqu(i32, double*)

declare fastcc void @mp_mul_d2i(i32, i32, i32, double*, i32*)
