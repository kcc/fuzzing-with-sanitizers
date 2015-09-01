


@A = weak global [1000 x i32] zeroinitializer, align 32         



define void @test(i32 %N) {
entry:
        br label %bb3

bb:             
        %tmp = getelementptr [1000 x i32], [1000 x i32]* @A, i32 0, i32 %i.0          
        store i32 123, i32* %tmp
        %tmp4 = mul i32 %i.0, 4         
        %tmp5 = or i32 %tmp4, 1
        %tmp61 = xor i32 %tmp5, -2147483648
        %tmp6 = trunc i32 %tmp61 to i16
        %tmp71 = shl i16 %tmp6, 2
        %tmp7 = zext i16 %tmp71 to i32
        %tmp2 = add i32 %tmp7, %i.0
        br label %bb3

bb3:            
        %i.0 = phi i32 [ 0, %entry ], [ %tmp2, %bb ]            
        %tmp3 = icmp sle i32 %i.0, 9999          
        br i1 %tmp3, label %bb, label %bb5

bb5:            
        br label %return

return:         
        ret void
}
