



















@bytes = global [11 x i8] zeroinitializer
@dwords = global [11 x i64] zeroinitializer
@floats = global [11 x float] zeroinitializer
@doubles = global [11 x double] zeroinitializer

define void @align_to_arg_slots(i8 signext %a, i8 signext %b, i8 signext %c,
                                i8 signext %d, i8 signext %e, i8 signext %f,
                                i8 signext %g, i8 signext %h, i8 signext %i,
                                i8 signext %j) nounwind {
entry:
        %0 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 1
        store volatile i8 %a, i8* %0
        %1 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 2
        store volatile i8 %b, i8* %1
        %2 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 3
        store volatile i8 %c, i8* %2
        %3 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 4
        store volatile i8 %d, i8* %3
        %4 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 5
        store volatile i8 %e, i8* %4
        %5 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 6
        store volatile i8 %f, i8* %5
        %6 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 7
        store volatile i8 %g, i8* %6
        %7 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 8
        store volatile i8 %h, i8* %7
        %8 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 9
        store volatile i8 %i, i8* %8
        %9 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 10
        store volatile i8 %j, i8* %9
        ret void
}









































define void @slot_skipping(i8 signext %a, i64 signext %b, i8 signext %c,
                           i8 signext %d, i8 signext %e, i8 signext %f,
                           i8 signext %g, i64 signext %i, i8 signext %j) nounwind {
entry:
        %0 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 1
        store volatile i8 %a, i8* %0
        %1 = getelementptr [11 x i64], [11 x i64]* @dwords, i32 0, i32 1
        store volatile i64 %b, i64* %1
        %2 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 2
        store volatile i8 %c, i8* %2
        %3 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 3
        store volatile i8 %d, i8* %3
        %4 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 4
        store volatile i8 %e, i8* %4
        %5 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 5
        store volatile i8 %f, i8* %5
        %6 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 6
        store volatile i8 %g, i8* %6
        %7 = getelementptr [11 x i64], [11 x i64]* @dwords, i32 0, i32 2
        store volatile i64 %i, i64* %7
        %8 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 7
        store volatile i8 %j, i8* %8
        ret void
}























































