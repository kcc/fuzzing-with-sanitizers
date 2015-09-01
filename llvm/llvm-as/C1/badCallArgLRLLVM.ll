










declare i32 @getInt(i32)

define i32 @main(i32 %argc, i8** %argv) {
bb0:
        br label %bb2

bb1:            
        %reg222 = call i32 @getInt( i32 %reg218 )               
        %reg110 = add i32 %reg222, 1            
        %b = icmp sle i32 %reg110, 0            
        br i1 %b, label %bb2, label %bb3

bb2:            
        %reg218 = call i32 @getInt( i32 %argc )         
        br label %bb1

bb3:            
        ret i32 %reg110
}

