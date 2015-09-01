




target triple = "i386-apple-darwin9.0"
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @_OSSwapInt64 to i8*)], section "llvm.metadata"		

define i64 @_OSSwapInt64(i64 %_data) nounwind {
entry:
	%retval = alloca i64		
	%_data.addr = alloca i64		
	store i64 %_data, i64* %_data.addr
	%tmp = load i64, i64* %_data.addr		
	%0 = call i64 asm "bswap   %eax\0A\09bswap   %edx\0A\09xchgl   %eax, %edx", "=A,0,~{dirflag},~{fpsr},~{flags}"(i64 %tmp) nounwind		
	store i64 %0, i64* %_data.addr
	%tmp1 = load i64, i64* %_data.addr		
	store i64 %tmp1, i64* %retval
	%1 = load i64, i64* %retval		
	ret i64 %1
}



define i64 @swapped(i64 %x, i64 %y) nounwind {
entry:
	%x0 = call { i64, i64 } asm "foo", "=r,=r,1,0,~{dirflag},~{fpsr},~{flags}"(i64 %x, i64 %y) nounwind
        %x1 = extractvalue { i64, i64 } %x0, 0
        ret i64 %x1
}
