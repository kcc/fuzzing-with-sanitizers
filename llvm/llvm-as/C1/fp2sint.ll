



define i32 @main(i32 %argc, i8** %argv) {
cond_false.i.i.i:               
       %tmp35.i = load double, double* null, align 8           
       %tmp3536.i = fptosi double %tmp35.i to i32              
       %tmp3536140.i = zext i32 %tmp3536.i to i64              
       %tmp39.i = load double, double* null, align 4           
       %tmp3940.i = fptosi double %tmp39.i to i32              
       %tmp3940137.i = zext i32 %tmp3940.i to i64              
       %tmp3940137138.i = shl i64 %tmp3940137.i, 32            
       %tmp3940137138.ins.i = or i64 %tmp3940137138.i, %tmp3536140.i           
       %tmp95.i.i = trunc i64 %tmp3940137138.ins.i to i32              
       store i32 %tmp95.i.i, i32* null, align 4
       ret i32 0
}
