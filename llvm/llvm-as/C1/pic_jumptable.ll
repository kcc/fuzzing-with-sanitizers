









declare void @_Z3bari(i32)


define linkonce void @_Z3fooILi1EEvi(i32 %Y) nounwind {
entry:















	%Y_addr = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %Y, i32* %Y_addr
	%tmp = load i32, i32* %Y_addr		
	switch i32 %tmp, label %bb10 [
		 i32 0, label %bb3
		 i32 1, label %bb
		 i32 2, label %bb
		 i32 3, label %bb
		 i32 4, label %bb
		 i32 5, label %bb
		 i32 6, label %bb
		 i32 7, label %bb
		 i32 8, label %bb
		 i32 9, label %bb
		 i32 10, label %bb
		 i32 12, label %bb1
		 i32 13, label %bb5
		 i32 14, label %bb6
		 i32 16, label %bb2
		 i32 17, label %bb4
		 i32 23, label %bb8
		 i32 27, label %bb7
		 i32 34, label %bb9
	]

bb:		
	call void @_Z3bari( i32 0 )
	br label %bb1

bb1:		
	call void @_Z3bari( i32 1 )
	br label %bb2

bb2:		
	call void @_Z3bari( i32 2 )
	br label %bb11

bb3:		
	br label %bb4

bb4:		
	br label %bb5

bb5:		
	br label %bb6

bb6:		
	call void @_Z3bari( i32 2 )
	br label %bb11

bb7:		
	br label %bb8

bb8:		
	br label %bb9

bb9:		
	call void @_Z3bari( i32 3 )
	br label %bb11

bb10:		
	br label %bb11

bb11:		
	br label %return

return:		
	ret void
}
