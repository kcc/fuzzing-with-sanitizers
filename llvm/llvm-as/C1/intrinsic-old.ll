


define ptx_device i32 @test_tid_x() {


	%x = call i32 @llvm.ptx.read.tid.x()
	ret i32 %x
}

define ptx_device i32 @test_tid_y() {


	%x = call i32 @llvm.ptx.read.tid.y()
	ret i32 %x
}

define ptx_device i32 @test_tid_z() {


	%x = call i32 @llvm.ptx.read.tid.z()
	ret i32 %x
}

define ptx_device i32 @test_tid_w() {


	%x = call i32 @llvm.ptx.read.tid.w()
	ret i32 %x
}

define ptx_device i32 @test_ntid_x() {


	%x = call i32 @llvm.ptx.read.ntid.x()
	ret i32 %x
}

define ptx_device i32 @test_ntid_y() {


	%x = call i32 @llvm.ptx.read.ntid.y()
	ret i32 %x
}

define ptx_device i32 @test_ntid_z() {


	%x = call i32 @llvm.ptx.read.ntid.z()
	ret i32 %x
}

define ptx_device i32 @test_ntid_w() {


	%x = call i32 @llvm.ptx.read.ntid.w()
	ret i32 %x
}

define ptx_device i32 @test_laneid() {


	%x = call i32 @llvm.ptx.read.laneid()
	ret i32 %x
}

define ptx_device i32 @test_warpid() {


	%x = call i32 @llvm.ptx.read.warpid()
	ret i32 %x
}

define ptx_device i32 @test_nwarpid() {


	%x = call i32 @llvm.ptx.read.nwarpid()
	ret i32 %x
}

define ptx_device i32 @test_ctaid_x() {


	%x = call i32 @llvm.ptx.read.ctaid.x()
	ret i32 %x
}

define ptx_device i32 @test_ctaid_y() {


	%x = call i32 @llvm.ptx.read.ctaid.y()
	ret i32 %x
}

define ptx_device i32 @test_ctaid_z() {


	%x = call i32 @llvm.ptx.read.ctaid.z()
	ret i32 %x
}

define ptx_device i32 @test_ctaid_w() {


	%x = call i32 @llvm.ptx.read.ctaid.w()
	ret i32 %x
}

define ptx_device i32 @test_nctaid_x() {


	%x = call i32 @llvm.ptx.read.nctaid.x()
	ret i32 %x
}

define ptx_device i32 @test_nctaid_y() {


	%x = call i32 @llvm.ptx.read.nctaid.y()
	ret i32 %x
}

define ptx_device i32 @test_nctaid_z() {


	%x = call i32 @llvm.ptx.read.nctaid.z()
	ret i32 %x
}

define ptx_device i32 @test_nctaid_w() {


	%x = call i32 @llvm.ptx.read.nctaid.w()
	ret i32 %x
}

define ptx_device i32 @test_smid() {


	%x = call i32 @llvm.ptx.read.smid()
	ret i32 %x
}

define ptx_device i32 @test_nsmid() {


	%x = call i32 @llvm.ptx.read.nsmid()
	ret i32 %x
}

define ptx_device i32 @test_gridid() {


	%x = call i32 @llvm.ptx.read.gridid()
	ret i32 %x
}

define ptx_device i32 @test_lanemask_eq() {


	%x = call i32 @llvm.ptx.read.lanemask.eq()
	ret i32 %x
}

define ptx_device i32 @test_lanemask_le() {


	%x = call i32 @llvm.ptx.read.lanemask.le()
	ret i32 %x
}

define ptx_device i32 @test_lanemask_lt() {


	%x = call i32 @llvm.ptx.read.lanemask.lt()
	ret i32 %x
}

define ptx_device i32 @test_lanemask_ge() {


	%x = call i32 @llvm.ptx.read.lanemask.ge()
	ret i32 %x
}

define ptx_device i32 @test_lanemask_gt() {


	%x = call i32 @llvm.ptx.read.lanemask.gt()
	ret i32 %x
}

define ptx_device i32 @test_clock() {


	%x = call i32 @llvm.ptx.read.clock()
	ret i32 %x
}

define ptx_device i64 @test_clock64() {


	%x = call i64 @llvm.ptx.read.clock64()
	ret i64 %x
}

define ptx_device i32 @test_pm0() {


	%x = call i32 @llvm.ptx.read.pm0()
	ret i32 %x
}

define ptx_device i32 @test_pm1() {


	%x = call i32 @llvm.ptx.read.pm1()
	ret i32 %x
}

define ptx_device i32 @test_pm2() {


	%x = call i32 @llvm.ptx.read.pm2()
	ret i32 %x
}

define ptx_device i32 @test_pm3() {


	%x = call i32 @llvm.ptx.read.pm3()
	ret i32 %x
}

define ptx_device void @test_bar_sync() {


	call void @llvm.ptx.bar.sync(i32 0)
	ret void
}

declare i32 @llvm.ptx.read.tid.x()
declare i32 @llvm.ptx.read.tid.y()
declare i32 @llvm.ptx.read.tid.z()
declare i32 @llvm.ptx.read.tid.w()
declare i32 @llvm.ptx.read.ntid.x()
declare i32 @llvm.ptx.read.ntid.y()
declare i32 @llvm.ptx.read.ntid.z()
declare i32 @llvm.ptx.read.ntid.w()

declare i32 @llvm.ptx.read.laneid()
declare i32 @llvm.ptx.read.warpid()
declare i32 @llvm.ptx.read.nwarpid()

declare i32 @llvm.ptx.read.ctaid.x()
declare i32 @llvm.ptx.read.ctaid.y()
declare i32 @llvm.ptx.read.ctaid.z()
declare i32 @llvm.ptx.read.ctaid.w()
declare i32 @llvm.ptx.read.nctaid.x()
declare i32 @llvm.ptx.read.nctaid.y()
declare i32 @llvm.ptx.read.nctaid.z()
declare i32 @llvm.ptx.read.nctaid.w()

declare i32 @llvm.ptx.read.smid()
declare i32 @llvm.ptx.read.nsmid()
declare i32 @llvm.ptx.read.gridid()

declare i32 @llvm.ptx.read.lanemask.eq()
declare i32 @llvm.ptx.read.lanemask.le()
declare i32 @llvm.ptx.read.lanemask.lt()
declare i32 @llvm.ptx.read.lanemask.ge()
declare i32 @llvm.ptx.read.lanemask.gt()

declare i32 @llvm.ptx.read.clock()
declare i64 @llvm.ptx.read.clock64()

declare i32 @llvm.ptx.read.pm0()
declare i32 @llvm.ptx.read.pm1()
declare i32 @llvm.ptx.read.pm2()
declare i32 @llvm.ptx.read.pm3()

declare void @llvm.ptx.bar.sync(i32 %i)
