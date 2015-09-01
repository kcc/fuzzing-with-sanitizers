



























%struct.s = type { i64, i64, i64, i64, i64, i64, i64, i64,
                   i64, i64, i64, i64, i64, i64, i64, i64,
                   i64, i64, i64, i64, i64, i64, i64, i64 }

declare  fastcc i64 @tailcallee(%struct.s* byval %a, i64 %val, i64 %val2, i64 %val3, i64 %val4, i64 %val5)


define  fastcc i64 @tailcaller(i64 %b, %struct.s* byval %a) {
entry:
        %tmp2 = getelementptr %struct.s, %struct.s* %a, i32 0, i32 1
        %tmp3 = load i64, i64* %tmp2, align 8
        %tmp4 = tail call fastcc i64 @tailcallee(%struct.s* byval %a , i64 %tmp3, i64 %b, i64 7, i64 13, i64 17)
        ret i64 %tmp4
}
