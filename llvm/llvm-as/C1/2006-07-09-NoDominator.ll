

	%struct.SetJmpMapEntry = type { i8*, i32, %struct.SetJmpMapEntry* }

define void @__llvm_sjljeh_try_catching_longjmp_exception() {
entry:
	br label %loopentry
loopentry:		
	%SJE.0 = phi %struct.SetJmpMapEntry* [ null, %entry ], [ %tmp.25, %endif ]	
	br i1 false, label %no_exit, label %loopexit
no_exit:		
	br i1 false, label %then, label %endif
then:		
	%tmp.21 = getelementptr %struct.SetJmpMapEntry, %struct.SetJmpMapEntry* %SJE.0, i32 0, i32 1		
	br label %return
endif:		
	%tmp.25 = load %struct.SetJmpMapEntry*, %struct.SetJmpMapEntry** null		
	br label %loopentry
loopexit:		
	br label %return
return:		
	ret void
}

