

%Ty = type { i32, i32 }




define internal %Ty* @test1(%Ty* %this) {
  ret %Ty* %this
}




define internal %Ty* @test2(%Ty* returned %this) {
  ret %Ty* %this
}


@dummy = global %Ty* null 




define internal %Ty* @test3(%Ty* %this) {
  store volatile %Ty* %this, %Ty** @dummy
  ret %Ty* %this
}




define internal %Ty* @test4(%Ty* returned %this) {
  store volatile %Ty* %this, %Ty** @dummy
  ret %Ty* %this
}




define internal %Ty* @test5(%Ty* %this) {
  store volatile %Ty* %this, %Ty** @dummy
  ret %Ty* %this
}

define %Ty* @caller(%Ty* %this) {
  %1 = call %Ty* @test1(%Ty* %this)
  %2 = call %Ty* @test2(%Ty* %this)
  %3 = call %Ty* @test3(%Ty* %this)
  %4 = call %Ty* @test4(%Ty* %this)


  %5 = call %Ty* @test5(%Ty* returned %this)
  ret %Ty* %this
}
