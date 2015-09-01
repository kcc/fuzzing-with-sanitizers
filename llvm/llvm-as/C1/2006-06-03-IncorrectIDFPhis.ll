


        %struct.SetJmpMapEntry = type { i8*, i32, %struct.SetJmpMapEntry* }

define void @__llvm_sjljeh_try_catching_longjmp_exception() {
entry:
        br i1 false, label %UnifiedReturnBlock, label %no_exit
no_exit:                
        %SJE.0.0 = phi %struct.SetJmpMapEntry* [ %tmp.24, %endif ], [ null, %entry ]            
        br i1 false, label %then, label %endif
then:           
        %tmp.20 = getelementptr %struct.SetJmpMapEntry, %struct.SetJmpMapEntry* %SJE.0.0, i32 0, i32 1          
        ret void
endif:          
        %tmp.24 = load %struct.SetJmpMapEntry*, %struct.SetJmpMapEntry** null            
        br i1 false, label %UnifiedReturnBlock, label %no_exit
UnifiedReturnBlock:             
        ret void
}

