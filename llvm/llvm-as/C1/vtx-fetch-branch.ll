











define void @test(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %cond) {
entry:
  %0 = icmp eq i32 %cond, 0
  br i1 %0, label %endif, label %if

if:
  %1 = load i32, i32 addrspace(1)* %in
  br label %endif

endif:
  %x = phi i32 [ %1, %if], [ 0, %entry]
  store i32 %x, i32 addrspace(1)* %out
  br label %done

done:
  ret void
}
