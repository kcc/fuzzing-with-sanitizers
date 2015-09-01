





declare void @bar(i8*)

define void @foo() {
        %cast225 = inttoptr i64 123456 to i8*           
        call void @bar( i8* %cast225 )
        ret void
}
