


define i32* @t1({ float, i32 }* %X) {
        %W = getelementptr { float, i32 }, { float, i32 }* %X, i32 20, i32 1            
        %X.upgrd.1 = getelementptr { float, i32 }, { float, i32 }* %X, i64 20, i32 1            
        %Y = getelementptr { float, i32 }, { float, i32 }* %X, i64 20, i32 1            
        %Z = getelementptr { float, i32 }, { float, i32 }* %X, i64 20, i32 1            
        ret i32* %Y
}

