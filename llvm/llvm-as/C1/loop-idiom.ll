










define void @no_memcpy(i8 addrspace(3)* %in, i32 %size) {
entry:
  %dest = alloca i8, i32 32
  br label %for.body

for.body:
  %0 = phi i32 [0, %entry], [%4, %for.body]
  %1 = getelementptr i8, i8 addrspace(3)* %in, i32 %0
  %2 = getelementptr i8, i8* %dest, i32 %0
  %3 = load i8, i8 addrspace(3)* %1
  store i8 %3, i8* %2
  %4 = add i32 %0, 1
  %5 = icmp eq i32 %4, %size
  br i1 %5, label %for.end, label %for.body

for.end:
  ret void
}






define void @no_memset(i32 %size) {
entry:
  %dest = alloca i8, i32 32
  br label %for.body

for.body:
  %0 = phi i32 [0, %entry], [%2, %for.body]
  %1 = getelementptr i8, i8* %dest, i32 %0
  store i8 0, i8* %1
  %2 = add i32 %0, 1
  %3 = icmp eq i32 %2, %size
  br i1 %3, label %for.end, label %for.body

for.end:
  ret void
}
