





define void @GrayATo32ARGBTabB(i8* %baseAddr, i16** %cmp, i32 %rowBytes) nounwind {
entry:
      	br label %bb1

bb1:            
        %0 = load i16, i16* null, align 2            
        %1 = ashr i16 %0, 4             
        %2 = sext i16 %1 to i32         
        %3 = getelementptr i8, i8* null, i32 %2             
        %4 = load i8, i8* %3, align 1               
        %5 = zext i8 %4 to i32          
        %6 = shl i32 %5, 24             
        %7 = or i32 0, %6               
        store i32 %7, i32* null, align 4
        br label %bb1
}
