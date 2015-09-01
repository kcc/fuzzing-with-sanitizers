




%class.Complex = type { float, float }








































define void @t1(%class.Complex* nocapture %out, i64 %out_start) {
entry:
  %arrayidx = getelementptr inbounds %class.Complex, %class.Complex* %out, i64 %out_start
  %tmp = bitcast %class.Complex* %arrayidx to i64*
  %tmp1 = load i64, i64* %tmp, align 8
  %t0.sroa.0.0.extract.trunc = trunc i64 %tmp1 to i32
  %tmp2 = bitcast i32 %t0.sroa.0.0.extract.trunc to float
  %t0.sroa.2.0.extract.shift = lshr i64 %tmp1, 32
  %t0.sroa.2.0.extract.trunc = trunc i64 %t0.sroa.2.0.extract.shift to i32
  %tmp3 = bitcast i32 %t0.sroa.2.0.extract.trunc to float
  %add = add i64 %out_start, 8
  %arrayidx2 = getelementptr inbounds %class.Complex, %class.Complex* %out, i64 %add
  %i.i = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx2, i64 0, i32 0
  %tmp4 = load float, float* %i.i, align 4
  %add.i = fadd float %tmp4, %tmp2
  %retval.sroa.0.0.vec.insert.i = insertelement <2 x float> undef, float %add.i, i32 0
  %r.i = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx2, i64 0, i32 1
  %tmp5 = load float, float* %r.i, align 4
  %add5.i = fadd float %tmp5, %tmp3
  %retval.sroa.0.4.vec.insert.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i, float %add5.i, i32 1
  %ref.tmp.sroa.0.0.cast = bitcast %class.Complex* %arrayidx to <2 x float>*
  store <2 x float> %retval.sroa.0.4.vec.insert.i, <2 x float>* %ref.tmp.sroa.0.0.cast, align 4
  ret void
}


declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1


declare void @llvm.lifetime.start(i64, i8* nocapture)


declare void @llvm.lifetime.end(i64, i8* nocapture)






















define i32 @t2(%class.Complex* nocapture %out, i64 %out_start) {
  %arrayidx = getelementptr inbounds %class.Complex, %class.Complex* %out, i64 %out_start
  %bitcast = bitcast %class.Complex* %arrayidx to i64*
  %chunk64 = load i64, i64* %bitcast, align 8
  %slice32_low = trunc i64 %chunk64 to i32
  %shift48 = lshr i64 %chunk64, 48
  %slice32_high = trunc i64 %shift48 to i32
  %res = add i32 %slice32_high, %slice32_low
  ret i32 %res
}















define i32 @t3(%class.Complex* nocapture %out, i64 %out_start) {
  %arrayidx = getelementptr inbounds %class.Complex, %class.Complex* %out, i64 %out_start
  %bitcast = bitcast %class.Complex* %arrayidx to i64*
  %chunk64 = load i64, i64* %bitcast, align 8
  %slice32_low = trunc i64 %chunk64 to i32
  %shift48 = lshr i64 %chunk64, 48
  %slice32_high = trunc i64 %shift48 to i32
  %shift32 = lshr i64 %chunk64, 32
  %slice32_lowhigh = trunc i64 %shift32 to i32
  %tmpres = add i32 %slice32_high, %slice32_low
  %res = add i32 %slice32_lowhigh, %tmpres
  ret i32 %res
}
