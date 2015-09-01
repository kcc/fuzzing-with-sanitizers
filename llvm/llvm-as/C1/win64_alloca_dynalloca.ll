






define i64 @unaligned(i64 %n, i64 %x) nounwind {



entry:

  %buf0 = alloca i8, i64 4096, align 1























  %buf1 = alloca i8, i64 %n, align 1


























  %r = call i64 @bar(i64 %n, i64 %x, i64 %n, i8* %buf0, i8* %buf1) nounwind
















  ret i64 %r





}

define i64 @aligned(i64 %n, i64 %x) nounwind {



entry:

  %buf1 = alloca i8, i64 %n, align 128
























  %r = call i64 @bar(i64 %n, i64 %x, i64 %n, i8* undef, i8* %buf1) nounwind













  ret i64 %r
}

declare i64 @bar(i64, i64, i64, i8* nocapture, i8* nocapture) nounwind
