





declare void @foo(fp128)

define double @test_f128csel_flags(i32 %lhs, fp128 %a, fp128 %b) nounwind {


    %tst = icmp ne i32 %lhs, 42
    %val = select i1 %tst, fp128 %a, fp128 %b



    call void @foo(fp128 %val)
    %retval = select i1 %tst, double 4.0, double 5.0

    
    
    



    ret double %retval
}
