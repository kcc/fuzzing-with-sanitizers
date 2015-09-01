












define void @test_no_sink_flat_small_offset_i32(i32 addrspace(4)* %out, i32 addrspace(4)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(4)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(4)* %in, i64 7
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(4)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(4)* %out.gep
  br label %done

done:
  ret void
}
