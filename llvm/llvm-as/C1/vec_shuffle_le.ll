

define void @VPKUHUM_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VPKUHUM_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VPKUWUM_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VPKUWUM_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VMRGLB_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VMRGLB_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VMRGHB_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VMRGHB_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VMRGLH_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VMRGLH_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 6, i32 7>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VMRGHH_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VMRGHH_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 8, i32 9, i32 8, i32 9, i32 10, i32 11, i32 10, i32 11, i32 12, i32 13, i32 12, i32 13, i32 14, i32 15, i32 14, i32 15>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VMRGLW_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VMRGLW_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VMRGHW_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VMRGHW_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

define void @VSLDOI_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>



        store <16 x i8> %tmp3, <16 x i8>* %A
        ret void
}

define void @VSLDOI_xx(<16 x i8>* %A) {
entry:

        %tmp = load <16 x i8>, <16 x i8>* %A
        %tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>

        store <16 x i8> %tmp2, <16 x i8>* %A
        ret void
}

