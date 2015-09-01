






@var = global double 0.0

declare void @foo(...)

define void @bar() {






















    %val1 = load volatile double, double* @var
    %val2 = load volatile double, double* @var
    call void (...) @foo() nounwind
    store volatile double %val1, double* @var
    store volatile double %val2, double* @var
    ret void
}
