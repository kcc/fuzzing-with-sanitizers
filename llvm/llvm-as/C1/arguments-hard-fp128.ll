










@ldoubles = global [11 x fp128] zeroinitializer

define void @ldouble_args(fp128 %a, fp128 %b, fp128 %c, fp128 %d, fp128 %e) nounwind {
entry:
        %0 = getelementptr [11 x fp128], [11 x fp128]* @ldoubles, i32 0, i32 1
        store volatile fp128 %a, fp128* %0
        %1 = getelementptr [11 x fp128], [11 x fp128]* @ldoubles, i32 0, i32 2
        store volatile fp128 %b, fp128* %1
        %2 = getelementptr [11 x fp128], [11 x fp128]* @ldoubles, i32 0, i32 3
        store volatile fp128 %c, fp128* %2
        %3 = getelementptr [11 x fp128], [11 x fp128]* @ldoubles, i32 0, i32 4
        store volatile fp128 %d, fp128* %3
        %4 = getelementptr [11 x fp128], [11 x fp128]* @ldoubles, i32 0, i32 5
        store volatile fp128 %e, fp128* %4
        ret void
}






















