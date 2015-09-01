

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

%struct.A = type { [7 x i8] }

define %struct.A* @test1(%struct.A* %b, %struct.A* %e) {
  %e_ptr = ptrtoint %struct.A* %e to i64
  %b_ptr = ptrtoint %struct.A* %b to i64
  %sub = sub i64 %e_ptr, %b_ptr
  %sdiv = sdiv exact i64 %sub, 7
  %gep = getelementptr inbounds %struct.A, %struct.A* %b, i64 %sdiv
  ret %struct.A* %gep


}

define i8* @test2(i8* %b, i8* %e) {
  %e_ptr = ptrtoint i8* %e to i64
  %b_ptr = ptrtoint i8* %b to i64
  %sub = sub i64 %e_ptr, %b_ptr
  %gep = getelementptr inbounds i8, i8* %b, i64 %sub
  ret i8* %gep


}

define i64* @test3(i64* %b, i64* %e) {
  %e_ptr = ptrtoint i64* %e to i64
  %b_ptr = ptrtoint i64* %b to i64
  %sub = sub i64 %e_ptr, %b_ptr
  %ashr = ashr exact i64 %sub, 3
  %gep = getelementptr inbounds i64, i64* %b, i64 %ashr
  ret i64* %gep


}

define %struct.A* @test4(%struct.A* %b) {
  %b_ptr = ptrtoint %struct.A* %b to i64
  %sub = sub i64 0, %b_ptr
  %sdiv = sdiv exact i64 %sub, 7
  %gep = getelementptr inbounds %struct.A, %struct.A* %b, i64 %sdiv
  ret %struct.A* %gep


}

define i8* @test5(i8* %b) {
  %b_ptr = ptrtoint i8* %b to i64
  %sub = sub i64 0, %b_ptr
  %gep = getelementptr inbounds i8, i8* %b, i64 %sub
  ret i8* %gep


}

define i64* @test6(i64* %b) {
  %b_ptr = ptrtoint i64* %b to i64
  %sub = sub i64 0, %b_ptr
  %ashr = ashr exact i64 %sub, 3
  %gep = getelementptr inbounds i64, i64* %b, i64 %ashr
  ret i64* %gep


}

define i8* @test7(i8* %b, i8** %e) {
  %e_ptr = ptrtoint i8** %e to i64
  %b_ptr = ptrtoint i8* %b to i64
  %sub = sub i64 %e_ptr, %b_ptr
  %gep = getelementptr inbounds i8, i8* %b, i64 %sub
  ret i8* %gep






}
