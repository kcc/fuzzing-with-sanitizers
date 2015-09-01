




define i32 @t2ADDrs_lsl(i32 %X, i32 %Y) {


        %A = shl i32 %Y, 16
        %B = add i32 %X, %A
        ret i32 %B
}

define i32 @t2ADDrs_lsr(i32 %X, i32 %Y) {


        %A = lshr i32 %Y, 16
        %B = add i32 %X, %A
        ret i32 %B
}

define i32 @t2ADDrs_asr(i32 %X, i32 %Y) {


        %A = ashr i32 %Y, 16
        %B = add i32 %X, %A
        ret i32 %B
}


define i32 @t2ADDrs_ror(i32 %X, i32 %Y) {


        %A = lshr i32 %Y, 16
        %B = shl  i32 %Y, 16
        %C = or   i32 %B, %A
        %R = add  i32 %X, %C
        ret i32 %R
}

define i32 @t2ADDrs_noRegShift(i32 %X, i32 %Y, i8 %sh) {








        %shift.upgrd.1 = zext i8 %sh to i32
        %A = shl i32 %Y, %shift.upgrd.1
        %B = add i32 %X, %A
        ret i32 %B
}

define i32 @t2ADDrs_noRegShift2(i32 %X, i32 %Y, i8 %sh) {








        %shift.upgrd.1 = zext i8 %sh to i32
        %A = lshr i32 %Y, %shift.upgrd.1
        %B = add i32 %X, %A
        ret i32 %B
}

define i32 @t2ADDrs_noRegShift3(i32 %X, i32 %Y, i8 %sh) {








        %shift.upgrd.1 = zext i8 %sh to i32
        %A = ashr i32 %Y, %shift.upgrd.1
        %B = add i32 %X, %A
        ret i32 %B
}

define i32 @t2ADDrs_optsize(i32 %X, i32 %Y, i8 %sh) optsize {



        %shift.upgrd.1 = zext i8 %sh to i32
        %A = shl i32 %Y, %shift.upgrd.1
        %B = add i32 %X, %A
        ret i32 %B
}

define i32 @t2ADDrs_minsize(i32 %X, i32 %Y, i8 %sh) minsize {



        %shift.upgrd.1 = zext i8 %sh to i32
        %A = lshr i32 %Y, %shift.upgrd.1
        %B = add i32 %X, %A
        ret i32 %B
}
