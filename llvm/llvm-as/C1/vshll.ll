

define <8 x i16> @vshlls8(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %sext = sext <8 x i8> %tmp1 to <8 x i16>
        %shift = shl <8 x i16> %sext, <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
        ret <8 x i16> %shift
}

define <4 x i32> @vshlls16(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %sext = sext <4 x i16> %tmp1 to <4 x i32>
        %shift = shl <4 x i32> %sext, <i32 15, i32 15, i32 15, i32 15>
        ret <4 x i32> %shift
}

define <2 x i64> @vshlls32(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %sext = sext <2 x i32> %tmp1 to <2 x i64>
        %shift = shl <2 x i64> %sext, <i64 31, i64 31>
        ret <2 x i64> %shift
}

define <8 x i16> @vshllu8(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %zext = zext <8 x i8> %tmp1 to <8 x i16>
        %shift = shl <8 x i16> %zext, <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
        ret <8 x i16> %shift
}

define <4 x i32> @vshllu16(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %zext = zext <4 x i16> %tmp1 to <4 x i32>
        %shift = shl <4 x i32> %zext, <i32 15, i32 15, i32 15, i32 15>
        ret <4 x i32> %shift
}

define <2 x i64> @vshllu32(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %zext = zext <2 x i32> %tmp1 to <2 x i64>
        %shift = shl <2 x i64> %zext, <i64 31, i64 31>
        ret <2 x i64> %shift
}



define <8 x i16> @vshlli8(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %sext = sext <8 x i8> %tmp1 to <8 x i16>
        %shift = shl <8 x i16> %sext, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
        ret <8 x i16> %shift
}

define <4 x i32> @vshlli16(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %zext = zext <4 x i16> %tmp1 to <4 x i32>
        %shift = shl <4 x i32> %zext, <i32 16, i32 16, i32 16, i32 16>
        ret <4 x i32> %shift
}

define <2 x i64> @vshlli32(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %zext = zext <2 x i32> %tmp1 to <2 x i64>
        %shift = shl <2 x i64> %zext, <i64 32, i64 32>
        ret <2 x i64> %shift
}



define <8 x i16> @vshllu8_bad(<8 x i8>* %A) nounwind {



        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %zext = zext <8 x i8> %tmp1 to <8 x i16>
        %shift = shl <8 x i16> %zext, <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
        ret <8 x i16> %shift
}

define <4 x i32> @vshlls16_bad(<4 x i16>* %A) nounwind {



        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %sext = sext <4 x i16> %tmp1 to <4 x i32>
        %shift = shl <4 x i32> %sext, <i32 17, i32 17, i32 17, i32 17>
        ret <4 x i32> %shift
}

define <2 x i64> @vshllu32_bad(<2 x i32>* %A) nounwind {



        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %zext = zext <2 x i32> %tmp1 to <2 x i64>
        %shift = shl <2 x i64> %zext, <i64 33, i64 33>
        ret <2 x i64> %shift
}
