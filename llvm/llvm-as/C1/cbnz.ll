

declare void @x()
declare void @y()

define void @f(i32 %x, i32 %y) {
  
  
  %p = icmp eq i32 %x, 0
  br i1 %p, label %t, label %f

t:
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  
  %q = icmp eq i32 %y, 0
  br i1 %q, label %t2, label %f

t2:
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  call void @x()
  br label %f

f:
  call void @y()
  ret void
}
