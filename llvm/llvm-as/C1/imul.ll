



define i32 @mul4_32(i32 %A) {




    %mul = mul i32 %A, 4
    ret i32 %mul
}

define i64 @mul4_64(i64 %A) {





    %mul = mul i64 %A, 4
    ret i64 %mul
}

define i32 @mul4096_32(i32 %A) {




    %mul = mul i32 %A, 4096
    ret i32 %mul
}

define i64 @mul4096_64(i64 %A) {





    %mul = mul i64 %A, 4096
    ret i64 %mul
}

define i32 @mulmin4096_32(i32 %A) {






    %mul = mul i32 %A, -4096
    ret i32 %mul
}

define i64 @mulmin4096_64(i64 %A) {









    %mul = mul i64 %A, -4096
    ret i64 %mul
}

define i32 @mul3_32(i32 %A) {





    %mul = mul i32 %A, 3
    ret i32 %mul
}

define i64 @mul3_64(i64 %A) {





    %mul = mul i64 %A, 3
    ret i64 %mul
}

define i32 @mul40_32(i32 %A) {






    %mul = mul i32 %A, 40
    ret i32 %mul
}

define i64 @mul40_64(i64 %A) {








    %mul = mul i64 %A, 40
    ret i64 %mul
}

define i32 @mul4_32_minsize(i32 %A) minsize {




    %mul = mul i32 %A, 4
    ret i32 %mul
}

define i32 @mul40_32_minsize(i32 %A) minsize {




    %mul = mul i32 %A, 40
    ret i32 %mul
}
