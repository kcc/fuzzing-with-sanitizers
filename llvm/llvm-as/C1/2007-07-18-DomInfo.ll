


target triple = "i686-pc-linux-gnu"
	%struct.re_pattern_buffer = type { i8*, i32, i32, i32, i8*, i8*, i32, i8 }

define fastcc i32 @byte_regex_compile(i8* %pattern, i32 %size, i32 %syntax, %struct.re_pattern_buffer* %bufp) {
entry:
        br i1 false, label %bb147, label %cond_next123

cond_next123:           
        ret i32 0

bb147:          
        switch i32 0, label %normal_char [
                 i32 91, label %bb1734
                 i32 92, label %bb5700
        ]

bb1734:         
        br label %bb1855.outer.outer

cond_true1831:          
        br i1 %tmp1837, label %cond_next1844, label %cond_true1840

cond_true1840:          
        ret i32 0

cond_next1844:          
        br i1 false, label %bb1855.outer, label %cond_true1849

cond_true1849:          
        br label %bb1855.outer.outer

bb1855.outer.outer:             
        %b.10.ph.ph = phi i8* [ null, %cond_true1849 ], [ null, %bb1734 ]               
        br label %bb1855.outer

bb1855.outer:           
        %b.10.ph = phi i8* [ null, %cond_next1844 ], [ %b.10.ph.ph, %bb1855.outer.outer ]               
        %tmp1837 = icmp eq i8* null, null               
        br i1 false, label %cond_true1831, label %cond_next1915

cond_next1915:          
        store i8* null, i8** null
        br i1 %tmp1837, label %cond_next1929, label %cond_true1923

cond_true1923:          
        ret i32 0

cond_next1929:          
        br i1 false, label %cond_next1961, label %cond_next2009

cond_next1961:          
        %tmp1992 = getelementptr i8, i8* %b.10.ph, i32 0            
        br label %cond_next1915

cond_next2009:          
        ret i32 0

bb5700:         
        ret i32 0

normal_char:            
        ret i32 0
}
