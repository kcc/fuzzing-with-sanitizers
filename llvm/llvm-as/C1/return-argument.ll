




define internal i32* @incdec(i1 %C, i32* %V) {
        %X = load i32, i32* %V
        br i1 %C, label %T, label %F

T:              
        %X1 = add i32 %X, 1
        store i32 %X1, i32* %V
        ret i32* %V

F:              
        %X2 = sub i32 %X, 1
        store i32 %X2, i32* %V
        ret i32* %V
}



define internal { i32, i32 } @foo(i32 %A, i32 %B) {
        %X = add i32 %A, %B
        %Y = insertvalue { i32, i32 } undef, i32 %A, 0
        %Z = insertvalue { i32, i32 } %Y, i32 %X, 1
        ret { i32, i32 } %Z
}

define void @caller(i1 %C) personality i32 (...)* @__gxx_personality_v0 {
        %Q = alloca i32
        
        %W = call i32* @incdec(i1 %C, i32* %Q )             
        
        
        
        %S1 = call { i32, i32 } @foo(i32 1, i32 2)
        %X1 = extractvalue { i32, i32 } %S1, 0
        %S2 = invoke { i32, i32 } @foo(i32 3, i32 4) to label %OK unwind label %LPAD

OK:
        %X2 = extractvalue { i32, i32 } %S2, 0
        
        %Z  = add i32 %X1, %X2
        store i32 %Z, i32* %W
        br label %RET

LPAD:
        %exn = landingpad {i8*, i32}
                 cleanup
        br label %RET

RET:
        ret void
}

declare i32 @__gxx_personality_v0(...)
