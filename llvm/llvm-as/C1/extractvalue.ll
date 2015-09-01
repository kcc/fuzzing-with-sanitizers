

declare void @bar({i32, i32} %a)
declare i32 @baz(i32 %a)



define i32 @foo(i32 %a, i32 %b) {


        
        %s1.1 = insertvalue {i32, i32} undef, i32 %a, 0
        %s1 = insertvalue {i32, i32} %s1.1, i32 %b, 1
        %v1 = extractvalue {i32, i32} %s1, 0
        %v2 = extractvalue {i32, i32} %s1, 1

        
        
        %ns1.1 = insertvalue {i32, {i32, i32}} undef, i32 %v1, 0
        %ns1.2 = insertvalue {i32, {i32, i32}} %ns1.1, i32 %v1, 1, 0
        %ns1   = insertvalue {i32, {i32, i32}} %ns1.2, i32 %v2, 1, 1
        %s2    = extractvalue {i32, {i32, i32}} %ns1, 1
        %v3    = extractvalue {i32, {i32, i32}} %ns1, 1, 1
        call void @bar({i32, i32} %s2)

        
        %s3    = extractvalue {i32, {i32, i32}} %ns1, 1
        %v4    = extractvalue {i32, i32} %s3, 1
        call void @bar({i32, i32} %s3)

        
        %s4.1 = insertvalue {i32, i32} undef, i32 %v3, 0
        %s4   = insertvalue {i32, i32} %s4.1, i32 %v4, 1
        %ns2  = insertvalue {i32, {i32, i32}} undef, {i32, i32} %s4, 1

        
        %v5   = extractvalue {i32, {i32, i32}} %ns2, 1, 1

        ret i32 %v5
}










define i32 @extract2gep({i32, i32}* %pair, i32* %P) {
        
        
        
        %L = load {i32, i32}, {i32, i32}* %pair
        store i32 0, i32* %P
        br label %loop

loop:
        %E = extractvalue {i32, i32} %L, 1
        %C = call i32 @baz(i32 %E)
        store i32 %C, i32* %P
        %cond = icmp eq i32 %C, 0
        br i1 %cond, label %end, label %loop

end:
        ret i32 %E
}





define i32 @doubleextract2gep({i32, {i32, i32}}* %arg) {
        
        
        %L = load {i32, {i32, i32}}, {i32, {i32, i32}}* %arg
        %E1 = extractvalue {i32, {i32, i32}} %L, 1
        %E2 = extractvalue {i32, i32} %E1, 1
        ret i32 %E2
}







define i32 @nogep-multiuse({i32, i32}* %pair) {
        
        %L = load volatile {i32, i32}, {i32, i32}* %pair
        %LHS = extractvalue {i32, i32} %L, 0
        %RHS = extractvalue {i32, i32} %L, 1
        %R = add i32 %LHS, %RHS
        ret i32 %R
}





define i32 @nogep-volatile({i32, i32}* %pair) {
        
        %L = load volatile {i32, i32}, {i32, i32}* %pair
        %E = extractvalue {i32, i32} %L, 1
        ret i32 %E
}
