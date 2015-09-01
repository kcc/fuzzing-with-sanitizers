

define void @_ZN13QFSFileEngine4readEPcx() {
	%tmp201 = load i32, i32* null		
	%tmp201.upgrd.1 = sext i32 %tmp201 to i64		
	%tmp202 = load i64, i64* null		
	%tmp203 = add i64 %tmp201.upgrd.1, %tmp202		
	store i64 %tmp203, i64* null
	ret void
}

