

















        %FileType = type { i32, [256 x i8], i32, i32, i32, i32 }
@OutputFiles = external global [16 x %FileType]         
@Output = internal global %FileType* null               

define internal i32 @OpenOutput(i8* %filename.1) {
entry:
        %tmp.0 = load %FileType*, %FileType** @Output               
        %tmp.4 = getelementptr %FileType, %FileType* %tmp.0, i64 1         
        %addrOfGlobal = getelementptr [16 x %FileType], [16 x %FileType]* @OutputFiles, i64 0             
        %constantGEP = getelementptr [16 x %FileType], [16 x %FileType]* %addrOfGlobal, i64 1             
        %constantGEP.upgrd.1 = getelementptr [16 x %FileType], [16 x %FileType]* %constantGEP, i64 0, i64 0               
        %tmp.10 = icmp eq %FileType* %tmp.4, %constantGEP.upgrd.1               
        br i1 %tmp.10, label %return, label %endif.0

endif.0:                
        ret i32 0

return:         
        ret i32 1
}

