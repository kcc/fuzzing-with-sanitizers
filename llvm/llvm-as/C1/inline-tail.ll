









declare void @test_capture_c(i32*)
define internal void @test_capture_b(i32* %P) {
  tail call void @test_capture_c(i32* %P)
  ret void
}
define void @test_capture_a() {
  %A = alloca i32  		
  call void @test_capture_b(i32* %A)
  ret void
}






declare void @test_proto_mismatch_c(i32*)
define internal void @test_proto_mismatch_b(i32* %p) {
  musttail call void @test_proto_mismatch_c(i32* %p)
  ret void
}
define void @test_proto_mismatch_a() {
  call void @test_proto_mismatch_b(i32* null)
  ret void
}






declare void @test_musttail_basic_c(i32* %p)
define internal void @test_musttail_basic_b(i32* %p) {
  musttail call void @test_musttail_basic_c(i32* %p)
  ret void
}
define void @test_musttail_basic_a(i32* %p) {
  musttail call void @test_musttail_basic_b(i32* %p)
  ret void
}







declare void @test_byval_c(i32* byval %p)
define internal void @test_byval_b(i32* byval %p) {
  musttail call void @test_byval_c(i32* byval %p)
  ret void
}
define void @test_byval_a(i32* byval %p) {
  musttail call void @test_byval_b(i32* byval %p)
  ret void
}








declare void @escape(i8* %buf)
declare void @test_dynalloca_c(i32* byval %p, i32 %n)
define internal void @test_dynalloca_b(i32* byval %p, i32 %n) alwaysinline {
  %buf = alloca i8, i32 %n              
  call void @escape(i8* %buf)           
  musttail call void @test_dynalloca_c(i32* byval %p, i32 %n)
  ret void
}
define void @test_dynalloca_a(i32* byval %p, i32 %n) {
  musttail call void @test_dynalloca_b(i32* byval %p, i32 %n)
  ret void
}








declare void @test_multiret_c(i1 zeroext %b)
declare void @test_multiret_d(i1 zeroext %b)
define internal void @test_multiret_b(i1 zeroext %b) {
  br i1 %b, label %c, label %d
c:
  musttail call void @test_multiret_c(i1 zeroext %b)
  ret void
d:
  musttail call void @test_multiret_d(i1 zeroext %b)
  ret void
}
define void @test_multiret_a(i1 zeroext %b) {
  musttail call void @test_multiret_b(i1 zeroext %b)
  ret void
}







declare i8* @test_retptr_c()
define internal i16* @test_retptr_b() {
  %rv = musttail call i8* @test_retptr_c()
  %v = bitcast i8* %rv to i16*
  ret i16* %v
}
define i32* @test_retptr_a() {
  %rv = musttail call i16* @test_retptr_b()
  %v = bitcast i16* %rv to i32*
  ret i32* %v
}










declare i8* @test_multiptrret_c(i1 zeroext %b)
declare i8* @test_multiptrret_d(i1 zeroext %b)
define internal i16* @test_multiptrret_b(i1 zeroext %b) {
  br i1 %b, label %c, label %d
c:
  %c_rv = musttail call i8* @test_multiptrret_c(i1 zeroext %b)
  %c_v = bitcast i8* %c_rv to i16*
  ret i16* %c_v
d:
  %d_rv = musttail call i8* @test_multiptrret_d(i1 zeroext %b)
  %d_v = bitcast i8* %d_rv to i16*
  ret i16* %d_v
}
define i32* @test_multiptrret_a(i1 zeroext %b) {
  %rv = musttail call i16* @test_multiptrret_b(i1 zeroext %b)
  %v = bitcast i16* %rv to i32*
  ret i32* %v
}











declare i32 @test_mixedret_c(i1 zeroext %b)
declare i32 @test_mixedret_d(i1 zeroext %b)
define internal i32 @test_mixedret_b(i1 zeroext %b) {
  br i1 %b, label %c, label %d
c:
  %c_rv = musttail call i32 @test_mixedret_c(i1 zeroext %b)
  ret i32 %c_rv
d:
  %d_rv = call i32 @test_mixedret_d(i1 zeroext %b)
  %d_rv1 = add i32 1, %d_rv
  ret i32 %d_rv1
}
define i32 @test_mixedret_a(i1 zeroext %b) {
  %rv = musttail call i32 @test_mixedret_b(i1 zeroext %b)
  ret i32 %rv
}
