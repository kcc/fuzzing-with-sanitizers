





define void @STWBRX(i32 %i, i8* %ptr, i32 %off) {
        %tmp1 = getelementptr i8, i8* %ptr, i32 %off                
        %tmp1.upgrd.1 = bitcast i8* %tmp1 to i32*               
        %tmp13 = tail call i32 @llvm.bswap.i32( i32 %i )                
        store i32 %tmp13, i32* %tmp1.upgrd.1
        ret void
}

define i32 @LWBRX(i8* %ptr, i32 %off) {
        %tmp1 = getelementptr i8, i8* %ptr, i32 %off                
        %tmp1.upgrd.2 = bitcast i8* %tmp1 to i32*               
        %tmp = load i32, i32* %tmp1.upgrd.2          
        %tmp14 = tail call i32 @llvm.bswap.i32( i32 %tmp )              
        ret i32 %tmp14
}

define void @STHBRX(i16 %s, i8* %ptr, i32 %off) {
        %tmp1 = getelementptr i8, i8* %ptr, i32 %off                
        %tmp1.upgrd.3 = bitcast i8* %tmp1 to i16*               
        %tmp5 = call i16 @llvm.bswap.i16( i16 %s )              
        store i16 %tmp5, i16* %tmp1.upgrd.3
        ret void
}

define i16 @LHBRX(i8* %ptr, i32 %off) {
        %tmp1 = getelementptr i8, i8* %ptr, i32 %off                
        %tmp1.upgrd.4 = bitcast i8* %tmp1 to i16*               
        %tmp = load i16, i16* %tmp1.upgrd.4          
        %tmp6 = call i16 @llvm.bswap.i16( i16 %tmp )            
        ret i16 %tmp6
}

define void @STDBRX(i64 %i, i8* %ptr, i64 %off) {
        %tmp1 = getelementptr i8, i8* %ptr, i64 %off                
        %tmp1.upgrd.1 = bitcast i8* %tmp1 to i64*               
        %tmp13 = tail call i64 @llvm.bswap.i64( i64 %i )                
        store i64 %tmp13, i64* %tmp1.upgrd.1
        ret void
}

define i64 @LDBRX(i8* %ptr, i64 %off) {
        %tmp1 = getelementptr i8, i8* %ptr, i64 %off                
        %tmp1.upgrd.2 = bitcast i8* %tmp1 to i64*               
        %tmp = load i64, i64* %tmp1.upgrd.2          
        %tmp14 = tail call i64 @llvm.bswap.i64( i64 %tmp )              
        ret i64 %tmp14
}

declare i32 @llvm.bswap.i32(i32)

declare i16 @llvm.bswap.i16(i16)

declare i64 @llvm.bswap.i64(i64)























