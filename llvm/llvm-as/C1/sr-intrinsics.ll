
declare void @llvm.xcore.setsr(i32)
declare void @llvm.xcore.clrsr(i32)

define void @setsr() nounwind {


	call void @llvm.xcore.setsr(i32 128)
	ret void
}


define void @clrsr() nounwind {


	call void @llvm.xcore.clrsr(i32 128)
	ret void
}
