




define void @test() {
        call void (...) bitcast (void (i16*, i32)* @AddString to void (...)*)( i16* null, i32 0 )
        ret void
}

define void @AddString(i16* %tmp.124, i32 %tmp.127) {
        call void (...) bitcast (void (i16*, i32)* @AddString to void (...)*)( i16* %tmp.124, i32 %tmp.127 )
        ret void
}

