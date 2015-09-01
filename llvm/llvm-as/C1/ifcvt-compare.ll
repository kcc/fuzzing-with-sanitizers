

declare void @x()

define void @f0(i32 %x) optsize {
  
  
  %p = icmp eq i32 %x, 0
  br i1 %p, label %t, label %f

t:
  call void @x()
  br label %f

f:
  ret void
}

define void @f1(i32 %x) optsize {
  
  
  
  %p = icmp eq i32 %x, 1
  br i1 %p, label %t, label %f

t:
  call void @x()
  br label %f

f:
  ret void
}

define void @f2(i32 %x) {
  
  
  
  %p = icmp eq i32 %x, 0
  br i1 %p, label %t, label %f

t:
  call void @x()
  br label %f

f:
  ret void
}
