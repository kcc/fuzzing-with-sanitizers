




define <4 x i32> @test1(<4 x i32> %a) nounwind {


















        %tmp1neg = sub <4 x i32> zeroinitializer, %a
        %b = icmp sgt <4 x i32> %a, <i32 -1, i32 -1, i32 -1, i32 -1>
        %abs = select <4 x i1> %b, <4 x i32> %a, <4 x i32> %tmp1neg
        ret <4 x i32> %abs
}

define <4 x i32> @test2(<4 x i32> %a) nounwind {


















        %tmp1neg = sub <4 x i32> zeroinitializer, %a
        %b = icmp sge <4 x i32> %a, zeroinitializer
        %abs = select <4 x i1> %b, <4 x i32> %a, <4 x i32> %tmp1neg
        ret <4 x i32> %abs
}

define <8 x i16> @test3(<8 x i16> %a) nounwind {


















        %tmp1neg = sub <8 x i16> zeroinitializer, %a
        %b = icmp sgt <8 x i16> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i16> %a, <8 x i16> %tmp1neg
        ret <8 x i16> %abs
}

define <16 x i8> @test4(<16 x i8> %a) nounwind {


















        %tmp1neg = sub <16 x i8> zeroinitializer, %a
        %b = icmp slt <16 x i8> %a, zeroinitializer
        %abs = select <16 x i1> %b, <16 x i8> %tmp1neg, <16 x i8> %a
        ret <16 x i8> %abs
}

define <4 x i32> @test5(<4 x i32> %a) nounwind {


















        %tmp1neg = sub <4 x i32> zeroinitializer, %a
        %b = icmp sle <4 x i32> %a, zeroinitializer
        %abs = select <4 x i1> %b, <4 x i32> %tmp1neg, <4 x i32> %a
        ret <4 x i32> %abs
}

define <8 x i32> @test6(<8 x i32> %a) nounwind {












        %tmp1neg = sub <8 x i32> zeroinitializer, %a
        %b = icmp sgt <8 x i32> %a, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
        %abs = select <8 x i1> %b, <8 x i32> %a, <8 x i32> %tmp1neg
        ret <8 x i32> %abs
}

define <8 x i32> @test7(<8 x i32> %a) nounwind {












        %tmp1neg = sub <8 x i32> zeroinitializer, %a
        %b = icmp sge <8 x i32> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i32> %a, <8 x i32> %tmp1neg
        ret <8 x i32> %abs
}

define <16 x i16> @test8(<16 x i16> %a) nounwind {












        %tmp1neg = sub <16 x i16> zeroinitializer, %a
        %b = icmp sgt <16 x i16> %a, zeroinitializer
        %abs = select <16 x i1> %b, <16 x i16> %a, <16 x i16> %tmp1neg
        ret <16 x i16> %abs
}

define <32 x i8> @test9(<32 x i8> %a) nounwind {












        %tmp1neg = sub <32 x i8> zeroinitializer, %a
        %b = icmp slt <32 x i8> %a, zeroinitializer
        %abs = select <32 x i1> %b, <32 x i8> %tmp1neg, <32 x i8> %a
        ret <32 x i8> %abs
}

define <8 x i32> @test10(<8 x i32> %a) nounwind {












        %tmp1neg = sub <8 x i32> zeroinitializer, %a
        %b = icmp sle <8 x i32> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i32> %tmp1neg, <8 x i32> %a
        ret <8 x i32> %abs
}

define <16 x i32> @test11(<16 x i32> %a) nounwind {








        %tmp1neg = sub <16 x i32> zeroinitializer, %a
        %b = icmp sle <16 x i32> %a, zeroinitializer
        %abs = select <16 x i1> %b, <16 x i32> %tmp1neg, <16 x i32> %a
        ret <16 x i32> %abs
}

define <8 x i64> @test12(<8 x i64> %a) nounwind {








        %tmp1neg = sub <8 x i64> zeroinitializer, %a
        %b = icmp sle <8 x i64> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i64> %tmp1neg, <8 x i64> %a
        ret <8 x i64> %abs
}

define <8 x i64> @test13(<8 x i64>* %a.ptr) nounwind {








        %a = load <8 x i64>, <8 x i64>* %a.ptr, align 8
        %tmp1neg = sub <8 x i64> zeroinitializer, %a
        %b = icmp sle <8 x i64> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i64> %tmp1neg, <8 x i64> %a
        ret <8 x i64> %abs
}
