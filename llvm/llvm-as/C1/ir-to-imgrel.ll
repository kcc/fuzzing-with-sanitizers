

@__ImageBase = external global i8


@"\01?x@@3HA" = global i64 sub nsw (i64 ptrtoint (i64* @"\01?x@@3HA" to i64), i64 ptrtoint (i8* @__ImageBase to i64)), align 8

declare void @f()


@fp = global i64 sub nsw (i64 ptrtoint (void ()* @f to i64), i64 ptrtoint (i8* @__ImageBase to i64)), align 8
