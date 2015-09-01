












define i32 @main() nounwind readnone {
entry:
  %x = alloca i32, align 4                        
  store volatile i32 2, i32* %x, align 4
  %0 = load volatile i32, i32* %x, align 4             
















  switch i32 %0, label %bb4 [
    i32 0, label %bb5
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
  ]

bb1:                                              
  ret i32 2

bb2:                                              
  ret i32 0

bb3:                                              
  ret i32 3

bb4:                                              
  ret i32 4

bb5:                                              
  ret i32 1
}




















