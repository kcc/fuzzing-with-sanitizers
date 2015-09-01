



@t = weak global i32 ()* null           

declare void @g(i32, i32, i32, i32)

define void @f() {





        tail call void @g( i32 1, i32 2, i32 3, i32 4 )
        ret void
}

define void @h() {





        %tmp = load i32 ()*, i32 ()** @t         
        %tmp.upgrd.2 = tail call i32 %tmp( )            
        ret void
}

define void @j() {





        tail call void @f()
        ret void
}
