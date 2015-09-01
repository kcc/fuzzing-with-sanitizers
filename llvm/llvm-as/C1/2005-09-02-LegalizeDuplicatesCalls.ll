




define double @test2(double %tmp.7705) {
        %mem_tmp.2.0.in = fptosi double %tmp.7705 to i64                
        %mem_tmp.2.0 = sitofp i64 %mem_tmp.2.0.in to double             
        ret double %mem_tmp.2.0
}

