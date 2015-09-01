

define fastcc double @sint64_to_fp(i64 %X) {
        %R = sitofp i64 %X to double            
        ret double %R
}

define fastcc double @uint64_to_fp(i64 %X) {
        %R = uitofp i64 %X to double            
        ret double %R
}

