

define void @bar(<8 x i16> %arg, <8 x i8>* %p) nounwind {




  %tmp = trunc <8 x i16> %arg to <8 x i8>
  store <8 x i8> %tmp, <8 x i8>* %p, align 8
  ret void
}

@zptr8 = common global i8* null, align 8
@zptr16 = common global i16* null, align 8
@zptr32 = common global i32* null, align 8

define void @fct32(i32 %arg, i64 %var) {









bb:
  %.pre37 = load i32*, i32** @zptr32, align 8
  %dec = add nsw i32 %arg, -1
  %idxprom8 = sext i32 %dec to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %.pre37, i64 %idxprom8
  %tmp = trunc i64 %var to i32
  store i32 %tmp, i32* %arrayidx9, align 4
  ret void
}

define void @fct16(i32 %arg, i64 %var) {









bb:
  %.pre37 = load i16*, i16** @zptr16, align 8
  %dec = add nsw i32 %arg, -1
  %idxprom8 = sext i32 %dec to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %.pre37, i64 %idxprom8
  %tmp = trunc i64 %var to i16
  store i16 %tmp, i16* %arrayidx9, align 4
  ret void
}

define void @fct8(i32 %arg, i64 %var) {









bb:
  %.pre37 = load i8*, i8** @zptr8, align 8
  %dec = add nsw i32 %arg, -1
  %idxprom8 = sext i32 %dec to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %.pre37, i64 %idxprom8
  %tmp = trunc i64 %var to i8
  store i8 %tmp, i8* %arrayidx9, align 4
  ret void
}
