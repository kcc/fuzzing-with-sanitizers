


@.str_1 = internal constant [6 x i8] c"_Bool\00"                

define i32 @test() {
        %tmp.54 = load i8, i8* getelementptr ([6 x i8], [6 x i8]* @.str_1, i64 0, i64 1)            
        %tmp.55 = icmp ne i8 %tmp.54, 66                
        br i1 %tmp.55, label %then.7, label %endif.7

then.7:         
        br label %then.7

endif.7:                
        ret i32 0
}

