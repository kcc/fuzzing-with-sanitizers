




define i64 @test1(<2 x i64> %a) {
entry:
 %c = shl <2 x i64> %a, <i64 0, i64 2>
 %d = extractelement <2 x i64> %c, i32 0
 ret i64 %d
}

