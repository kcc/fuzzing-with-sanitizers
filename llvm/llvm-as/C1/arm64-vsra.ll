

define <8 x i8> @vsras8(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = ashr <8 x i8> %tmp2, < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >
        %tmp4 = add <8 x i8> %tmp1, %tmp3
	ret <8 x i8> %tmp4
}

define <4 x i16> @vsras16(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = ashr <4 x i16> %tmp2, < i16 15, i16 15, i16 15, i16 15 >
        %tmp4 = add <4 x i16> %tmp1, %tmp3
	ret <4 x i16> %tmp4
}

define <2 x i32> @vsras32(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = ashr <2 x i32> %tmp2, < i32 31, i32 31 >
        %tmp4 = add <2 x i32> %tmp1, %tmp3
	ret <2 x i32> %tmp4
}

define <16 x i8> @vsraQs8(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = ashr <16 x i8> %tmp2, < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >
        %tmp4 = add <16 x i8> %tmp1, %tmp3
	ret <16 x i8> %tmp4
}

define <8 x i16> @vsraQs16(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = ashr <8 x i16> %tmp2, < i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15 >
        %tmp4 = add <8 x i16> %tmp1, %tmp3
	ret <8 x i16> %tmp4
}

define <4 x i32> @vsraQs32(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = ashr <4 x i32> %tmp2, < i32 31, i32 31, i32 31, i32 31 >
        %tmp4 = add <4 x i32> %tmp1, %tmp3
	ret <4 x i32> %tmp4
}

define <2 x i64> @vsraQs64(<2 x i64>* %A, <2 x i64>* %B) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = load <2 x i64>, <2 x i64>* %B
	%tmp3 = ashr <2 x i64> %tmp2, < i64 63, i64 63 >
        %tmp4 = add <2 x i64> %tmp1, %tmp3
	ret <2 x i64> %tmp4
}

define <8 x i8> @vsrau8(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = lshr <8 x i8> %tmp2, < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >
        %tmp4 = add <8 x i8> %tmp1, %tmp3
	ret <8 x i8> %tmp4
}

define <4 x i16> @vsrau16(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = lshr <4 x i16> %tmp2, < i16 15, i16 15, i16 15, i16 15 >
        %tmp4 = add <4 x i16> %tmp1, %tmp3
	ret <4 x i16> %tmp4
}

define <2 x i32> @vsrau32(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = lshr <2 x i32> %tmp2, < i32 31, i32 31 >
        %tmp4 = add <2 x i32> %tmp1, %tmp3
	ret <2 x i32> %tmp4
}


define <16 x i8> @vsraQu8(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = lshr <16 x i8> %tmp2, < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >
        %tmp4 = add <16 x i8> %tmp1, %tmp3
	ret <16 x i8> %tmp4
}

define <8 x i16> @vsraQu16(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = lshr <8 x i16> %tmp2, < i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15 >
        %tmp4 = add <8 x i16> %tmp1, %tmp3
	ret <8 x i16> %tmp4
}

define <4 x i32> @vsraQu32(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = lshr <4 x i32> %tmp2, < i32 31, i32 31, i32 31, i32 31 >
        %tmp4 = add <4 x i32> %tmp1, %tmp3
	ret <4 x i32> %tmp4
}

define <2 x i64> @vsraQu64(<2 x i64>* %A, <2 x i64>* %B) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = load <2 x i64>, <2 x i64>* %B
	%tmp3 = lshr <2 x i64> %tmp2, < i64 63, i64 63 >
        %tmp4 = add <2 x i64> %tmp1, %tmp3
	ret <2 x i64> %tmp4
}

define <1 x i64> @vsra_v1i64(<1 x i64> %A, <1 x i64> %B) nounwind {


  %tmp3 = ashr <1 x i64> %B, < i64 63 >
  %tmp4 = add <1 x i64> %A, %tmp3
  ret <1 x i64> %tmp4
}
