
@d = external global [64 x i32]
@s = external global [64 x i32]


define void @t1() #0 {
entry:







    tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([64 x i32]* @s to i8*), i8* bitcast ([64 x i32]* @d to i8*), i32 17, i32 4, i1 false)
    ret void
}


define void @t2() #0 {
entry:









    tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([64 x i32]* @s to i8*), i8* bitcast ([64 x i32]* @d to i8*), i32 15, i32 4, i1 false)
    ret void
}


declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1
