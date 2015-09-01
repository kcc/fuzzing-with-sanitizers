



@A = global i32 0


@D = internal alias i32* @A


@L1 = alias i32* @A


@L2 = internal alias i32* @L1


@L3 = alias i32* @L2

