


define void @test(<8 x i16>* %P) {
        %tmp = load <8 x i16>, <8 x i16>* %P               
        %tmp1 = add <8 x i16> %tmp, < i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10 >          
        store <8 x i16> %tmp1, <8 x i16>* %P
        ret void
}

