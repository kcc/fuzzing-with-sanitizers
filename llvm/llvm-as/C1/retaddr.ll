



target triple = "powerpc-apple-darwin8"

define void @foo(i8** %X) nounwind {
entry:
	%tmp = tail call i8* @llvm.returnaddress( i32 0 )		
	store i8* %tmp, i8** %X, align 4
	ret void
}

declare i8* @llvm.returnaddress(i32)

