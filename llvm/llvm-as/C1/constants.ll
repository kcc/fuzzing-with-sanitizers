

define i32 @f1() {


        ret i32 0
}

define i32 @f2() {


        ret i32 255
}

define i32 @f3() {


        ret i32 256
}

define i32 @f4() {


        ret i32 257
}

define i32 @f5() {


        ret i32 -1073741761
}

define i32 @f6() {


        ret i32 1008
}

define void @f7(i32 %a) {


        %b = icmp ugt i32 %a, 65536
        br i1 %b, label %r, label %r
r:
        ret void
}

define i32 @f8() nounwind {




        %tmp0 = bitcast i32 -1 to float
        %tmp1 = bitcast float %tmp0 to i32
        ret i32 %tmp1
}

%t1 = type { <3 x float>, <3 x float> }

@const1 = global %t1 { <3 x float> zeroinitializer,
                       <3 x float> <float 1.000000e+00,
                                    float 2.000000e+00,
                                    float 3.000000e+00> }, align 16






