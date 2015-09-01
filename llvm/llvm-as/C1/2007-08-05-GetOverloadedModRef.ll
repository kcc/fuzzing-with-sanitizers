


declare i16 @llvm.cttz.i16(i16, i1)

define i32 @test(i32* %P, i16* %Q) {

        %A = load i16, i16* %Q               
        %x = load i32, i32* %P               
        %B = call i16 @llvm.cttz.i16( i16 %A, i1 true )          
        %y = load i32, i32* %P               
        store i16 %B, i16* %Q
        %z = sub i32 %x, %y             
        ret i32 %z
}

