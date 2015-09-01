

target datalayout = "E-p:32:32"
target triple = "powerpc-apple-darwin8.7.0"

define void @foo(i32 %X) {
entry:
        %tmp1 = and i32 %X, 3           
        %tmp2 = xor i32 %tmp1, 1                
        %tmp = icmp eq i32 %tmp2, 0             
        br i1 %tmp, label %UnifiedReturnBlock, label %cond_true
cond_true:              
        tail call i32 (...) @bar( )            
        ret void
UnifiedReturnBlock:             
        ret void
}

declare i32 @bar(...)

