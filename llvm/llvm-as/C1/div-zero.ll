

declare void @ext()

define i32 @foo(i32 %ptr) {
entry:
        %zero = sub i32 %ptr, %ptr              
        %div_zero = sdiv i32 %zero, ptrtoint (i32* getelementptr (i32, i32* null,
i32 1) to i32)             
        ret i32 %div_zero
}

