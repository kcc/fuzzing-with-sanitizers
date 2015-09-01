

target datalayout = "e-p1:16:16-p2:32:32-p3:64:64"

@G1 = global i32 42, align 1
@G2 = global i32 42
@G3 = global [4 x i8] zeroinitializer, align 1

@A1 = alias bitcast (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @G3, i32 0, i32 2) to i32*)
@A2 = alias inttoptr (i64 and (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @G3, i32 0, i32 3) to i64), i64 -4) to i32*)

define i64 @f1() {



  ret i64 and (i64 ptrtoint (i32* @G1 to i64), i64 1)
}

define i64 @f2() {



  ret i64 and (i64 ptrtoint (i32* @G2 to i64), i64 1)
}

define i64 @g1() {



  ret i64 and (i64 ptrtoint (i32* @A1 to i64), i64 1)
}

define i64 @g2() {




  ret i64 and (i64 ptrtoint (i32* @A2 to i64), i64 1)
}

