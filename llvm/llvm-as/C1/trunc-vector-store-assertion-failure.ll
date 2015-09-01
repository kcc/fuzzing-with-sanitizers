







define void @test(<4 x i8> addrspace(1)* %out, i32 %cond, <4 x i8> %in) {
entry:
  %0 = icmp eq i32 %cond, 0
  br i1 %0, label %if, label %done

if:
  store <4 x i8> %in, <4 x i8> addrspace(1)* %out
  br label %done

done:
  ret void
}
