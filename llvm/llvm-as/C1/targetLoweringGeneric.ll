













define void @foo(i32 %i32In1, i32 %i32In2, i32 %i32In3, i32 %i32In4, 
                 i32 %i32In5, i32 %i32In6, i32* %i32StarOut, i1 %i1In1, 
                 i32* %i32SelOut) nounwind {
    %and3 = and i32 %i32In1, 1362779777
    %or2 = or i32 %i32In2, %i32In3
    %and2 = and i32 %or2, 1362779777
    %xor3 = xor i32 %and3, %and2
    
    %shl1 = shl i32 %xor3, %i32In4
    %sub1 = sub i32 %or2, %shl1
    %add1 = add i32 %sub1, %i32In5
    %and1 = and i32 %add1, 1
    %xor2 = xor i32 %and1, 1
    %or1 = or i32 %xor2, 364806994 
    
    %xor1 = xor i32 %or1, 268567040 
    
    store i32 %xor1, i32* %i32StarOut
    
    %i32SelVal = select i1 %i1In1, i32 %i32In1, i32 %xor1
    store i32 %i32SelVal, i32* %i32SelOut
    
    ret void
}
