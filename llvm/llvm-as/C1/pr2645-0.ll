




define internal void @""(i8*) {

        bitcast i8* %0 to i32*          
        load i32, i32* %2, align 1           
        getelementptr i8, i8* %0, i32 4             
        bitcast i8* %4 to i32*          
        load i32, i32* %5, align 1           
        br label %7


        %.01 = phi <4 x float> [ undef, %1 ], [ %12, %9 ]               
        %.0 = phi i32 [ %3, %1 ], [ %15, %9 ]           
        icmp slt i32 %.0, %6            
        br i1 %8, label %9, label %16


        sitofp i32 %.0 to float         
        insertelement <4 x float> %.01, float %10, i32 0                
        shufflevector <4 x float> %11, <4 x float> undef, <4 x i32> zeroinitializer             
        getelementptr i8, i8* %0, i32 48            
        bitcast i8* %13 to <4 x float>*         
        store <4 x float> %12, <4 x float>* %14, align 16
        add i32 %.0, 2          
        br label %7


        ret void
}
