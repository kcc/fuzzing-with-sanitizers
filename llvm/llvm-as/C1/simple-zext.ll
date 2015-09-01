





define void @load_zext(i32* nocapture %p){
entry:
  %0 = load i32, i32* %p, align 4
  %and = and i32 %0, 255
  tail call void @use(i32 %and)
  ret void

}

declare void @use(i32)
