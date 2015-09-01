


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define void @PR18642(i32 %x) {

entry:
  br label %outer.header


outer.header:

  %outer.iv = phi i32 [ 0, %entry ], [ %x, %outer.latch ]
  br label %inner.header



inner.header:

  %inner.iv = phi i32 [ undef, %outer.header ], [ %inc, %inner.latch ]
  %cmp1 = icmp slt i32 %inner.iv, %outer.iv
  br i1 %cmp1, label %inner.latch, label %outer.latch


inner.latch:

  %inc = add nsw i32 %inner.iv, 1
  %cmp2 = icmp slt i32 %inner.iv, %outer.iv
  br i1 %cmp2, label %inner.header, label %exit


outer.latch:

  br i1 undef, label %outer.header, label %exit









exit:

  %exit.phi = phi i32 [ %inc, %inner.latch ], [ undef, %outer.latch ]

  ret void
}
