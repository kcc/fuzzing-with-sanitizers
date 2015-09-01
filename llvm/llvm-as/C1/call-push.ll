

        %struct.decode_t = type { i8, i8, i8, i8, i16, i8, i8, %struct.range_t** }
        %struct.range_t = type { float, float, i32, i32, i32, [0 x i8] }

define i32 @decode_byte(%struct.decode_t* %decode) nounwind {





entry:
        %tmp2 = getelementptr %struct.decode_t, %struct.decode_t* %decode, i32 0, i32 4           
        %tmp23 = bitcast i16* %tmp2 to i32*             
        %tmp4 = load i32, i32* %tmp23                
        %tmp514 = lshr i32 %tmp4, 24            
        %tmp56 = trunc i32 %tmp514 to i8                
        %tmp7 = icmp eq i8 %tmp56, 0            
        br i1 %tmp7, label %UnifiedReturnBlock, label %cond_true

cond_true:              
        %tmp10 = tail call i32 @f( %struct.decode_t* %decode )          
        ret i32 %tmp10

UnifiedReturnBlock:             
        ret i32 0
}

declare i32 @f(%struct.decode_t*)









declare i32 @foo(i32, i32, i32)

define void @test2() nounwind {
entry:
  %call = call i32 @foo(i32 8, i32 6, i32 undef)
  ret void
}
