




define i1 @f(i8* %x) {
entry:
       %tmp462 = load i8, i8* %x, align 1          
       %tmp462463 = sitofp i8 %tmp462 to float         
       %tmp464 = fcmp ugt float %tmp462463, 0x47EFFFFFE0000000         
       ret i1 %tmp464
}


