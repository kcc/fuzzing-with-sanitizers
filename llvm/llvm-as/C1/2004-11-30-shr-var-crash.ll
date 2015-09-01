

define void @main() {
        %shamt = add i8 0, 1            
        %shift.upgrd.1 = zext i8 %shamt to i64          
        %tr2 = ashr i64 1, %shift.upgrd.1               
        ret void
}

