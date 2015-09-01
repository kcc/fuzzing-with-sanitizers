


define i64 @baz(i32 %A) nounwind {

        %tmp1 = shl i32 %A, 17
        %tmp2 = zext i32 %tmp1 to i64
        %tmp3 = shl i64 %tmp2, 32
        ret i64 %tmp3
}
