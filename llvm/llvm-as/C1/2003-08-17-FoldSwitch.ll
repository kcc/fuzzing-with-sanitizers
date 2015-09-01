




define i32 @test1() {
        switch i32 5, label %Default [
                 i32 0, label %Foo
                 i32 1, label %Bar
                 i32 2, label %Baz
                 i32 5, label %TheDest
        ]
Default:                
        ret i32 -1
Foo:            
        ret i32 -2
Bar:            
        ret i32 -3
Baz:            
        ret i32 -4
TheDest:                
        ret i32 1234
}


define i32 @test2() {
        switch i32 3, label %Default [
                 i32 0, label %Foo
                 i32 1, label %Bar
                 i32 2, label %Baz
                 i32 5, label %TheDest
        ]
Default:                
        ret i32 1234
Foo:            
        ret i32 -2
Bar:            
        ret i32 -5
Baz:            
        ret i32 -6
TheDest:                
        ret i32 -8
}


define i32 @test3(i1 %C) {
        br i1 %C, label %Start, label %TheDest
Start:          
        switch i32 3, label %TheDest [
                 i32 0, label %TheDest
                 i32 1, label %TheDest
                 i32 2, label %TheDest
                 i32 5, label %TheDest
        ]
TheDest:                
        ret i32 1234
}


define i32 @test4(i32 %C) {
        switch i32 %C, label %L1 [
                 i32 0, label %L2
        ]
L1:             
        ret i32 0
L2:             
        ret i32 1
}


define i32 @test5(i32 %C) {
        switch i32 %C, label %L1 [
                 i32 0, label %L2
                 i32 123, label %L1
        ]
L1:             
        ret i32 0
L2:             
        ret i32 1
}

