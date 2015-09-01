




































define void @nested3(i32 addrspace(1)* %out, i32 %cond) {
entry:
  %0 = icmp sgt i32 %cond, 0
  br i1 %0, label %if.1, label %end

if.1:
  %1 = icmp sgt i32 %cond, 10
  br i1 %1, label %if.2, label %if.store.1

if.store.1:
  store i32 1, i32 addrspace(1)* %out
  br label %end

if.2:
  %2 = icmp sgt i32 %cond, 20
  br i1 %2, label %if.3, label %if.2.store

if.2.store:
  store i32 2, i32 addrspace(1)* %out
  br label %end

if.3:
  store i32 3, i32 addrspace(1)* %out
  br label %end

end:
  ret void
}





define void @nested4(i32 addrspace(1)* %out, i32 %cond) {
entry:
  %0 = icmp sgt i32 %cond, 0
  br i1 %0, label %if.1, label %end

if.1:
  %1 = icmp sgt i32 %cond, 10
  br i1 %1, label %if.2, label %if.1.store

if.1.store:
  store i32 1, i32 addrspace(1)* %out
  br label %end

if.2:
  %2 = icmp sgt i32 %cond, 20
  br i1 %2, label %if.3, label %if.2.store

if.2.store:
  store i32 2, i32 addrspace(1)* %out
  br label %end

if.3:
  %3 = icmp sgt i32 %cond, 30
  br i1 %3, label %if.4, label %if.3.store

if.3.store:
  store i32 3, i32 addrspace(1)* %out
  br label %end

if.4:
  store i32 4, i32 addrspace(1)* %out
  br label %end

end:
  ret void
}





define void @nested7(i32 addrspace(1)* %out, i32 %cond) {
entry:
  %0 = icmp sgt i32 %cond, 0
  br i1 %0, label %if.1, label %end

if.1:
  %1 = icmp sgt i32 %cond, 10
  br i1 %1, label %if.2, label %if.1.store

if.1.store:
  store i32 1, i32 addrspace(1)* %out
  br label %end

if.2:
  %2 = icmp sgt i32 %cond, 20
  br i1 %2, label %if.3, label %if.2.store

if.2.store:
  store i32 2, i32 addrspace(1)* %out
  br label %end

if.3:
  %3 = icmp sgt i32 %cond, 30
  br i1 %3, label %if.4, label %if.3.store

if.3.store:
  store i32 3, i32 addrspace(1)* %out
  br label %end

if.4:
  %4 = icmp sgt i32 %cond, 40
  br i1 %4, label %if.5, label %if.4.store

if.4.store:
  store i32 4, i32 addrspace(1)* %out
  br label %end

if.5:
  %5 = icmp sgt i32 %cond, 50
  br i1 %5, label %if.6, label %if.5.store

if.5.store:
  store i32 5, i32 addrspace(1)* %out
  br label %end

if.6:
  %6 = icmp sgt i32 %cond, 60
  br i1 %6, label %if.7, label %if.6.store

if.6.store:
  store i32 6, i32 addrspace(1)* %out
  br label %end

if.7:
  store i32 7, i32 addrspace(1)* %out
  br label %end

end:
  ret void
}





define void @nested8(i32 addrspace(1)* %out, i32 %cond) {
entry:
  %0 = icmp sgt i32 %cond, 0
  br i1 %0, label %if.1, label %end

if.1:
  %1 = icmp sgt i32 %cond, 10
  br i1 %1, label %if.2, label %if.1.store

if.1.store:
  store i32 1, i32 addrspace(1)* %out
  br label %end

if.2:
  %2 = icmp sgt i32 %cond, 20
  br i1 %2, label %if.3, label %if.2.store

if.2.store:
  store i32 2, i32 addrspace(1)* %out
  br label %end

if.3:
  %3 = icmp sgt i32 %cond, 30
  br i1 %3, label %if.4, label %if.3.store

if.3.store:
  store i32 3, i32 addrspace(1)* %out
  br label %end

if.4:
  %4 = icmp sgt i32 %cond, 40
  br i1 %4, label %if.5, label %if.4.store

if.4.store:
  store i32 4, i32 addrspace(1)* %out
  br label %end

if.5:
  %5 = icmp sgt i32 %cond, 50
  br i1 %5, label %if.6, label %if.5.store

if.5.store:
  store i32 5, i32 addrspace(1)* %out
  br label %end

if.6:
  %6 = icmp sgt i32 %cond, 60
  br i1 %6, label %if.7, label %if.6.store

if.6.store:
  store i32 6, i32 addrspace(1)* %out
  br label %end

if.7:
  %7 = icmp sgt i32 %cond, 70
  br i1 %7, label %if.8, label %if.7.store

if.7.store:
  store i32 7, i32 addrspace(1)* %out
  br label %end

if.8:
  store i32 8, i32 addrspace(1)* %out
  br label %end

end:
  ret void
}
