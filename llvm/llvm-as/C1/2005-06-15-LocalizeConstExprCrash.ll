


@g_40507551 = internal global i16 31038         

define void @main() {
        %tmp.4.i.1 = load i8, i8* getelementptr (i8, i8* bitcast (i16* @g_40507551 to i8*), i32 1)              
        ret void
}

