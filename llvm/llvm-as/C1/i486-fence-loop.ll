





define void @gst_atomic_queue_push(i32* %addr) {






entry:
  br label %while.body

while.body:
  %0 = load volatile i32, i32* %addr, align 4
  fence seq_cst
  %1 = load volatile i32, i32* %addr, align 4
  %cmp = icmp sgt i32 %1, %0
  br i1 %cmp, label %while.body, label %if.then

if.then:
  ret void
}