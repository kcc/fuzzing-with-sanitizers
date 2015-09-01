

define void @img2buf(i32 %symbol_size_in_bytes, i16* %ui16) nounwind {
        %tmp93 = load i16, i16* null         
        %tmp99 = call i16 @llvm.bswap.i16( i16 %tmp93 )         
        store i16 %tmp99, i16* %ui16
        ret void
}

declare i16 @llvm.bswap.i16(i16)

