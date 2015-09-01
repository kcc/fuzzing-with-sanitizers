

define double @short(i16* %P) {
        %V = load i16, i16* %P               
        %V2 = sitofp i16 %V to double           
        ret double %V2
}

define double @int(i32* %P) {
        %V = load i32, i32* %P               
        %V2 = sitofp i32 %V to double           
        ret double %V2
}

define double @long(i64* %P) {
        %V = load i64, i64* %P               
        %V2 = sitofp i64 %V to double           
        ret double %V2
}







