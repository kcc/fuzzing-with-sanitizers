
        %struct.TypHeader = type { i32, %struct.TypHeader**, [3 x i8], i8 }
@.str_67 = external global [4 x i8]             
@.str_87 = external global [17 x i8]            

define void @PrBinop() {
entry:
        br i1 false, label %cond_true, label %else.0

cond_true:              
        br label %else.0

else.0:         
        %tmp.167.1 = phi i32 [ ptrtoint ([17 x i8]* @.str_87 to i32), %entry ], [ 0, %cond_true ]               
        call void @Pr( i8* getelementptr ([4 x i8], [4 x i8]* @.str_67, i32 0, i32 0), i32 0, i32 0 )
        ret void
}

declare void @Pr(i8*, i32, i32)

