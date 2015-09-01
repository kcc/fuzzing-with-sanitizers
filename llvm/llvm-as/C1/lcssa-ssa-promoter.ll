




target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = common global i32 0, align 4
@y = common global i32 0, align 4

define void @PR18688() {


entry:
  br i1 undef, label %return, label %outer.preheader

outer.preheader:
  br label %outer.header



outer.header:
  store i32 0, i32* @x, align 4
  br i1 undef, label %outer.latch, label %inner.preheader



inner.preheader:
  br label %inner.header



inner.header:
  br i1 undef, label %inner.body.rhs, label %inner.latch




inner.body.rhs:
  store i32 0, i32* @x, align 4
  br label %inner.latch



inner.latch:
  %y_val = load i32, i32* @y, align 4
  %icmp = icmp eq i32 %y_val, 0
  br i1 %icmp, label %inner.exit, label %inner.header




inner.exit:
  br label %outer.latch




outer.latch:
  br i1 undef, label %outer.exit, label %outer.header




outer.exit:
  br label %return





return:
  ret void
}

