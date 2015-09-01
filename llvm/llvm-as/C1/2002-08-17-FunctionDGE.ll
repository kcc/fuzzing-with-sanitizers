





@b = internal global i32 ()* @foo               


@foo.upgrd.1 = internal global i32 7            

 
define internal i32 @foo() {
        %ret = load i32, i32* @foo.upgrd.1           
        ret i32 %ret
}

