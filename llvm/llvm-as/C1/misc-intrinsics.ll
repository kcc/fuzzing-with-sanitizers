
%0 = type { i32, i32 }

declare i32 @llvm.xcore.bitrev(i32)
declare i32 @llvm.xcore.crc32(i32, i32, i32)
declare %0 @llvm.xcore.crc8(i32, i32, i32)
declare i32 @llvm.xcore.zext(i32, i32)
declare i32 @llvm.xcore.sext(i32, i32)
declare i32 @llvm.xcore.geted()
declare i32 @llvm.xcore.getet()

define i32 @bitrev(i32 %val) {


	%result = call i32 @llvm.xcore.bitrev(i32 %val)
	ret i32 %result
}

define i32 @crc32(i32 %crc, i32 %data, i32 %poly) {


	%result = call i32 @llvm.xcore.crc32(i32 %crc, i32 %data, i32 %poly)
	ret i32 %result
}

define %0 @crc8(i32 %crc, i32 %data, i32 %poly) {


	%result = call %0 @llvm.xcore.crc8(i32 %crc, i32 %data, i32 %poly)
	ret %0 %result
}

define i32 @zext(i32 %a, i32 %b) {


	%result = call i32 @llvm.xcore.zext(i32 %a, i32 %b)
	ret i32 %result
}

define i32 @zexti(i32 %a) {


	%result = call i32 @llvm.xcore.zext(i32 %a, i32 4)
	ret i32 %result
}

define i32 @sext(i32 %a, i32 %b) {


	%result = call i32 @llvm.xcore.sext(i32 %a, i32 %b)
	ret i32 %result
}

define i32 @sexti(i32 %a) {


	%result = call i32 @llvm.xcore.sext(i32 %a, i32 4)
	ret i32 %result
}

define i32 @geted() {



	%result = call i32 @llvm.xcore.geted()
	ret i32 %result
}

define i32 @getet() {



	%result = call i32 @llvm.xcore.getet()
	ret i32 %result
}
