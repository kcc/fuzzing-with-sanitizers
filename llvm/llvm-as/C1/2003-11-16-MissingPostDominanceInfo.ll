
declare void @exit(i32)

define i32 @main(i32 %argc) {
        %C = icmp eq i32 %argc, 1               
        br i1 %C, label %Cond, label %Done

Cond:           
        br i1 %C, label %Loop, label %Done

Loop:           
        call void @exit( i32 0 )
        br label %Loop

Done:           
        ret i32 1
}

