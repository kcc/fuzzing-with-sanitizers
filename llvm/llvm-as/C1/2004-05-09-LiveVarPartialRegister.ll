
@global_long_1 = linkonce global i64 7          
@global_long_2 = linkonce global i64 49         

define i32 @main() {
        %l1 = load i64, i64* @global_long_1          
        %l2 = load i64, i64* @global_long_2          
        %cond = icmp sle i64 %l1, %l2           
        %cast2 = zext i1 %cond to i32           
        %RV = sub i32 1, %cast2         
        ret i32 %RV
}

