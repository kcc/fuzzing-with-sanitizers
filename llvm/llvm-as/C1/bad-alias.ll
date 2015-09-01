







@g1 = global i32 1
@g2 = global i32 2

@a = alias inttoptr(i32 sub (i32 ptrtoint (i32* @g1 to i32),
                             i32 ptrtoint (i32* @g2 to i32)) to i32*)
