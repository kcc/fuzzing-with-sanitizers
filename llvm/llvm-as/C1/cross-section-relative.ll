




@g1 = constant i32 1
@g2 = constant i32 2
@g3 = constant i32 3
@g4 = constant i32 4
@__ImageBase = external global i64*




@t1 = global i64 add(i64 sub(i64 ptrtoint(i32* @g3 to i64), i64 ptrtoint(i64* @t1 to i64)), i64 4), section ".fix"

@t2 = global i64 sub(i64 ptrtoint(i32* @g3 to i64), i64 ptrtoint(i64* @t2 to i64)), section ".fix"

@t3 = global i64 sub(i64 sub(i64 ptrtoint(i32* @g3 to i64), i64 ptrtoint(i64* @t3 to i64)), i64 4), section ".fix"

@t4 = global i32 trunc(i64 sub(i64 ptrtoint(i32* @g3 to i64), i64 ptrtoint(i32* @t4 to i64)) to i32), section ".fix"




@t5 = global i32 trunc(i64 sub(i64 ptrtoint(i32* @g3 to i64), i64 ptrtoint(i64** @__ImageBase to i64)) to i32), section ".fix"



%struct.EEType = type { [2 x i8], i64, i32}


@t6 = global %struct.EEType { 
        [2 x i8] c"\01\02", 
        i64 256,
        i32 trunc(i64 sub(i64 ptrtoint(i32* @g3 to i64), i64 ptrtoint(i32* getelementptr inbounds (%struct.EEType, %struct.EEType* @t6, i32 0, i32 2) to i64)) to i32 )
}, section ".fix"
