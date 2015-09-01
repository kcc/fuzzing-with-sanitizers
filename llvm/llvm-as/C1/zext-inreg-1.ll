







define i64 @l(i64 %d) nounwind  {
        %e = add i64 %d, 1
        %retval = and i64 %e, 1099511627775
        ret i64 %retval
}
define i64 @m(i64 %d) nounwind  {
        %e = add i64 %d, 1
        %retval = and i64 %e, 281474976710655
        ret i64 %retval
}
