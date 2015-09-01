


	%struct._obstack_chunk = type { i8* }
	%struct.obstack = type { i8*, %struct._obstack_chunk* (i8*, i64)*, i8*, i8 }

define i32 @_obstack_newchunk(%struct.obstack* %h, i32 %length) {
entry:
	br i1 false, label %cond_false, label %cond_true

cond_true:		
	br i1 false, label %cond_true28, label %cond_next30

cond_false:		
	%tmp22 = tail call %struct._obstack_chunk* null( i64 undef )		
	br i1 false, label %cond_true28, label %cond_next30

cond_true28:		
	%iftmp.0.043.0 = phi %struct._obstack_chunk* [ null, %cond_true ], [ %tmp22, %cond_false ]		
	tail call void null( )
	br label %cond_next30

cond_next30:		
	%iftmp.0.043.1 = phi %struct._obstack_chunk* [ %iftmp.0.043.0, %cond_true28 ], [ null, %cond_true ], [ %tmp22, %cond_false ]		
	%tmp41 = getelementptr %struct._obstack_chunk, %struct._obstack_chunk* %iftmp.0.043.1, i32 0, i32 0		
	store i8* null, i8** %tmp41, align 8
	ret i32 undef
}
