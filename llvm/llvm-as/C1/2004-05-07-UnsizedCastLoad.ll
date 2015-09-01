

%Ty = type opaque

define i32 @test(%Ty* %X) {
        %Y = bitcast %Ty* %X to i32*            
        %Z = load i32, i32* %Y               
        ret i32 %Z
}

