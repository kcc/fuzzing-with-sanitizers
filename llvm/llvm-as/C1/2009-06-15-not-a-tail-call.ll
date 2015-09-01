



declare fastcc i8* @_D3gcx2GC12mallocNoSyncMFmkZPv() nounwind

define fastcc i8* @_D3gcx2GC12callocNoSyncMFmkZPv() nounwind {
entry:
	%tmp6 = tail call fastcc i8* @_D3gcx2GC12mallocNoSyncMFmkZPv()		
	%tmp9 = tail call i8* @memset(i8* %tmp6, i32 0, i64 2)		
	ret i8* %tmp6
}

declare i8* @memset(i8*, i32, i64)
