



define <4 x double> @fmaddsubpd_loop(i32 %iter, <4 x double> %a, <4 x double> %b, <4 x double> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <4 x double> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <4 x double> @llvm.x86.fma.vfmaddsub.pd.256(<4 x double> %a, <4 x double> %b, <4 x double> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <4 x double> %c.addr.0
}



define <4 x double> @fmsubaddpd_loop(i32 %iter, <4 x double> %a, <4 x double> %b, <4 x double> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <4 x double> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <4 x double> @llvm.x86.fma.vfmsubadd.pd.256(<4 x double> %a, <4 x double> %b, <4 x double> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <4 x double> %c.addr.0
}



define <4 x double> @fmaddpd_loop(i32 %iter, <4 x double> %a, <4 x double> %b, <4 x double> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <4 x double> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <4 x double> @llvm.x86.fma.vfmadd.pd.256(<4 x double> %a, <4 x double> %b, <4 x double> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <4 x double> %c.addr.0
}



define <4 x double> @fmsubpd_loop(i32 %iter, <4 x double> %a, <4 x double> %b, <4 x double> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <4 x double> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <4 x double> @llvm.x86.fma.vfmsub.pd.256(<4 x double> %a, <4 x double> %b, <4 x double> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <4 x double> %c.addr.0
}

declare <4 x double> @llvm.x86.fma.vfmaddsub.pd.256(<4 x double>, <4 x double>, <4 x double>)
declare <4 x double> @llvm.x86.fma.vfmsubadd.pd.256(<4 x double>, <4 x double>, <4 x double>)
declare <4 x double> @llvm.x86.fma.vfmadd.pd.256(<4 x double>, <4 x double>, <4 x double>)
declare <4 x double> @llvm.x86.fma.vfmsub.pd.256(<4 x double>, <4 x double>, <4 x double>)




define <8 x float> @fmaddsubps_loop(i32 %iter, <8 x float> %a, <8 x float> %b, <8 x float> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <8 x float> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <8 x float> %c.addr.0
}



define <8 x float> @fmsubaddps_loop(i32 %iter, <8 x float> %a, <8 x float> %b, <8 x float> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <8 x float> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <8 x float> @llvm.x86.fma.vfmsubadd.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <8 x float> %c.addr.0
}



define <8 x float> @fmaddps_loop(i32 %iter, <8 x float> %a, <8 x float> %b, <8 x float> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <8 x float> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <8 x float> @llvm.x86.fma.vfmadd.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <8 x float> %c.addr.0
}



define <8 x float> @fmsubps_loop(i32 %iter, <8 x float> %a, <8 x float> %b, <8 x float> %c) {
entry:
  br label %for.cond

for.cond:
  %c.addr.0 = phi <8 x float> [ %c, %entry ], [ %0, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %iter
  br i1 %cmp, label %for.body, label %for.end

for.body:
  br label %for.inc

for.inc:
  %0 = call <8 x float> @llvm.x86.fma.vfmsub.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %c.addr.0)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:
  ret <8 x float> %c.addr.0
}

declare <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>)
declare <8 x float> @llvm.x86.fma.vfmsubadd.ps.256(<8 x float>, <8 x float>, <8 x float>)
declare <8 x float> @llvm.x86.fma.vfmadd.ps.256(<8 x float>, <8 x float>, <8 x float>)
declare <8 x float> @llvm.x86.fma.vfmsub.ps.256(<8 x float>, <8 x float>, <8 x float>)
