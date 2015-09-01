












define i64 @shiftable(i64 %A, i64 %B) {
        %tmp0 = sub i64 %B, 20
        %tmp1 = shl i64 %tmp0, 5
        %tmp2 = add i64 %A, %tmp1
        %tmp3 = add i64 %A, %tmp0
        %tmp4 = mul i64 %tmp2, %tmp3

        ret i64 %tmp4
}
