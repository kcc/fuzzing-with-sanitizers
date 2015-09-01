






define void @test() {
        br label %Top

Top:            
        br label %LoopHeader

Next:           
        br i1 false, label %Inner, label %Out

Inner:          
        br i1 false, label %Inner, label %LoopHeader

LoopHeader:             
        br label %Next

Out:            
        br i1 false, label %Top, label %Done

Done:           
        ret void
}

