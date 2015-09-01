






declare i32 @llvm.r600.read.tidig.x() #0









define void @test_sink_global_small_offset_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(1)* %in, i64 7
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(1)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}










define void @test_sink_global_small_max_i32_ds_offset(i32 addrspace(1)* %out, i8 addrspace(1)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 99999
  %in.gep = getelementptr i8, i8 addrspace(1)* %in, i64 65535
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i8, i8 addrspace(1)* %in.gep
  %tmp2 = sext i8 %tmp1 to i32
  br label %endif

endif:
  %x = phi i32 [ %tmp2, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}






define void @test_sink_global_small_max_mubuf_offset(i32 addrspace(1)* %out, i8 addrspace(1)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i32 1024
  %in.gep = getelementptr i8, i8 addrspace(1)* %in, i64 4095
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i8, i8 addrspace(1)* %in.gep
  %tmp2 = sext i8 %tmp1 to i32
  br label %endif

endif:
  %x = phi i32 [ %tmp2, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}






define void @test_sink_global_small_max_plus_1_mubuf_offset(i32 addrspace(1)* %out, i8 addrspace(1)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 99999
  %in.gep = getelementptr i8, i8 addrspace(1)* %in, i64 4096
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i8, i8 addrspace(1)* %in.gep
  %tmp2 = sext i8 %tmp1 to i32
  br label %endif

endif:
  %x = phi i32 [ %tmp2, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}











define void @test_sink_scratch_small_offset_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %cond, i32 %arg) {
entry:
  %alloca = alloca [512 x i32], align 4
  %out.gep.0 = getelementptr i32, i32 addrspace(1)* %out, i64 999998
  %out.gep.1 = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %add.arg = add i32 %arg, 8
  %alloca.gep = getelementptr [512 x i32], [512 x i32]* %alloca, i32 0, i32 1023
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  store volatile i32 123, i32* %alloca.gep
  %tmp1 = load volatile i32, i32* %alloca.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep.0
  %load = load volatile i32, i32* %alloca.gep
  store i32 %load, i32 addrspace(1)* %out.gep.1
  br label %done

done:
  ret void
}











define void @test_no_sink_scratch_large_offset_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %cond, i32 %arg) {
entry:
  %alloca = alloca [512 x i32], align 4
  %out.gep.0 = getelementptr i32, i32 addrspace(1)* %out, i64 999998
  %out.gep.1 = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %add.arg = add i32 %arg, 8
  %alloca.gep = getelementptr [512 x i32], [512 x i32]* %alloca, i32 0, i32 1024
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  store volatile i32 123, i32* %alloca.gep
  %tmp1 = load volatile i32, i32* %alloca.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep.0
  %load = load volatile i32, i32* %alloca.gep
  store i32 %load, i32 addrspace(1)* %out.gep.1
  br label %done

done:
  ret void
}








define void @test_sink_global_vreg_sreg_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %offset, i32 %cond) {
entry:
  %offset.ext = zext i32 %offset to i64
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(1)* %in, i64 %offset.ext
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(1)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }











define void @test_sink_constant_small_offset_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 7
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}









define void @test_sink_constant_max_8_bit_offset_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 255
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}













define void @test_sink_constant_max_8_bit_offset_p1_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 256
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}














define void @test_sink_constant_max_32_bit_offset_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 4294967295
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}











define void @test_sink_constant_max_32_bit_offset_p1_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 17179869181
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}










define void @test_sink_constant_max_20_bit_byte_offset_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 262143
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}


















define void @test_sink_constant_max_20_bit_byte_offset_p1_i32(i32 addrspace(1)* %out, i32 addrspace(2)* %in, i32 %cond) {
entry:
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i64 999999
  %in.gep = getelementptr i32, i32 addrspace(2)* %in, i64 262144
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %endif, label %if

if:
  %tmp1 = load i32, i32 addrspace(2)* %in.gep
  br label %endif

endif:
  %x = phi i32 [ %tmp1, %if ], [ 0, %entry ]
  store i32 %x, i32 addrspace(1)* %out.gep
  br label %done

done:
  ret void
}
