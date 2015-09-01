




define void @test_base_kill(i32 %v0, i32 %v1, i32* %addr) {




  %addr.1 = getelementptr i32, i32* %addr, i32 1
  store i32 %v0, i32* %addr.1

  %addr.2 = getelementptr i32, i32* %addr, i32 2
  store i32 %v1, i32* %addr.2

  %addr.3 = getelementptr i32, i32* %addr, i32 3
  %val = ptrtoint i32* %addr to i32
  store i32 %val, i32* %addr.3

  ret void
}




define void @test_base_kill_mid(i32 %v0, i32* %addr, i32 %v1) {




  %addr.1 = getelementptr i32, i32* %addr, i32 1
  store i32 %v0, i32* %addr.1

  %addr.2 = getelementptr i32, i32* %addr, i32 2
  %val = ptrtoint i32* %addr to i32
  store i32 %val, i32* %addr.2

  %addr.3 = getelementptr i32, i32* %addr, i32 3
  store i32 %v1, i32* %addr.3

  ret void
}
