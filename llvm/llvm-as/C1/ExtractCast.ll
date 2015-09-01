


define i32 @a(<4 x i64> %I) {
entry:

        %J = trunc <4 x i64> %I to <4 x i32>
        %K = extractelement <4 x i32> %J, i32 3



        ret i32 %K
}



define i32 @b(<4 x float> %I) {
entry:

        %J = fptosi <4 x float> %I to <4 x i32>
        %K = extractelement <4 x i32> %J, i32 3



        ret i32 %K
}

