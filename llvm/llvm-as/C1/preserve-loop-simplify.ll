





define void @PR18643() {

entry:
  br label %outer.header


outer.header:

  br i1 undef, label %inner.header, label %outer.body








inner.header:


  br i1 undef, label %return, label %inner.body


inner.body:


  br i1 undef, label %outer.latch, label %inner.latch


inner.latch:

  br label %inner.header

outer.body:

  br label %outer.latch






outer.latch:

  br label %outer.header










return:

  unreachable
}
