






define i32 @bar(i1 %C) {
entry:
        br i1 %C, label %then, label %endif
then:           
        %tmp.3 = call i32 @qux( )               
        br label %endif
endif:          
        %R = phi i32 [ 123, %entry ], [ 12312, %then ]          
        
        call i32 @qux( )                
        call i32 @qux( )                
        call i32 @qux( )                
        call i32 @qux( )                
        call i32 @qux( )                
        call i32 @qux( )                
        call i32 @qux( )                
        ret i32 %R
}

declare i32 @qux()
