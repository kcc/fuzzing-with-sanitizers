



define i64 @foo_0(<2 x i64>* %val) {
entry:
        %val12 = getelementptr <2 x i64>, <2 x i64>* %val, i32 0, i32 0            
        %tmp7 = load i64, i64* %val12                
        ret i64 %tmp7
}

define i64 @foo_1(<2 x i64>* %val) {
entry:
        %tmp2.gep = getelementptr <2 x i64>, <2 x i64>* %val, i32 0, i32 1         
        %tmp4 = load i64, i64* %tmp2.gep             
        ret i64 %tmp4
}
