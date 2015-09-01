

@gld0 = external global fp128
@gld1 = external global fp128





define void @foo0(fp128 %a0) {
entry:
  store fp128 %a0, fp128* @gld0, align 16
  ret void
}





define void @foo1() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  tail call void @foo2(fp128 %0)
  ret void
}

declare void @foo2(fp128)









define fp128 @foo3() {
entry:
  %call = tail call fp128 @foo4()
  store fp128 %call, fp128* @gld0, align 16
  %0 = load fp128, fp128* @gld1, align 16
  ret fp128 %0
}

declare fp128 @foo4()
