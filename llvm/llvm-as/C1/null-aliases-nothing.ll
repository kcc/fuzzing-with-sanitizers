

%t = type { i32 }
declare void @test1f(i8*)

define void @test1(%t* noalias %stuff ) {
    %p = getelementptr inbounds %t, %t* %stuff, i32 0, i32 0
    %before = load i32, i32* %p

    call void @test1f(i8* null)

    %after = load i32, i32* %p 
    %sum = add i32 %before, %after

    store i32 %sum, i32* %p
    ret void



}
