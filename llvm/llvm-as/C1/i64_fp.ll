



















define double @X(double %Y) {
        %A = fptosi double %Y to i64            
        %B = sitofp i64 %A to double            
        ret double %B
}

