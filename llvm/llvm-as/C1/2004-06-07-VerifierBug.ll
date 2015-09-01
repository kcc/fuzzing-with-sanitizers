


define void @t() {
entry:
     ret void

loop:           
     %tmp.4.i9 = getelementptr i32, i32* null, i32 %tmp.5.i10             
     %tmp.5.i10 = load i32, i32* %tmp.4.i9                
     br label %loop
}
