



define <4 x i16> @vclz16(<4 x i16>* %A) nounwind {

        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = call <4 x i16> @llvm.arm.neon.vclz.v4i16(<4 x i16> %tmp1)

        ret <4 x i16> %tmp2
}

define <8 x i8> @vcnt8(<8 x i8>* %A) nounwind {

        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = call <8 x i8> @llvm.arm.neon.vcnt.v8i8(<8 x i8> %tmp1)

        ret <8 x i8> %tmp2
}

declare <4 x i16>  @llvm.arm.neon.vclz.v4i16(<4 x i16>) nounwind readnone
declare <8 x i8>  @llvm.arm.neon.vcnt.v8i8(<8 x i8>) nounwind readnone
